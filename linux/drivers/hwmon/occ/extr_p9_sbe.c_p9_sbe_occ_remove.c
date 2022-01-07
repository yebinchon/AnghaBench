
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct p9_sbe_occ {int * sbe; } ;
struct occ {int dummy; } ;


 int occ_shutdown (struct occ*) ;
 struct occ* platform_get_drvdata (struct platform_device*) ;
 struct p9_sbe_occ* to_p9_sbe_occ (struct occ*) ;

__attribute__((used)) static int p9_sbe_occ_remove(struct platform_device *pdev)
{
 struct occ *occ = platform_get_drvdata(pdev);
 struct p9_sbe_occ *ctx = to_p9_sbe_occ(occ);

 ctx->sbe = ((void*)0);
 occ_shutdown(occ);

 return 0;
}
