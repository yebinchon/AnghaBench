
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {int flags; int tfm; } ;
struct ccp_crypto_cmd {int tfm; struct crypto_async_request* req; struct ccp_cmd* cmd; } ;
struct ccp_cmd {int flags; struct ccp_crypto_cmd* data; int callback; } ;
typedef int gfp_t ;


 int CCP_CMD_MAY_BACKLOG ;
 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int ccp_crypto_complete ;
 int ccp_crypto_enqueue_cmd (struct ccp_crypto_cmd*) ;
 struct ccp_crypto_cmd* kzalloc (int,int ) ;

int ccp_crypto_enqueue_request(struct crypto_async_request *req,
          struct ccp_cmd *cmd)
{
 struct ccp_crypto_cmd *crypto_cmd;
 gfp_t gfp;

 gfp = req->flags & CRYPTO_TFM_REQ_MAY_SLEEP ? GFP_KERNEL : GFP_ATOMIC;

 crypto_cmd = kzalloc(sizeof(*crypto_cmd), gfp);
 if (!crypto_cmd)
  return -ENOMEM;






 crypto_cmd->cmd = cmd;
 crypto_cmd->req = req;
 crypto_cmd->tfm = req->tfm;

 cmd->callback = ccp_crypto_complete;
 cmd->data = crypto_cmd;

 if (req->flags & CRYPTO_TFM_REQ_MAY_BACKLOG)
  cmd->flags |= CCP_CMD_MAY_BACKLOG;
 else
  cmd->flags &= ~CCP_CMD_MAY_BACKLOG;

 return ccp_crypto_enqueue_cmd(crypto_cmd);
}
