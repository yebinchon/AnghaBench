; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_handle_new_iu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_handle_new_iu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_rdma_ch = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.srpt_recv_ioctx = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.srp_cmd*, i32 }
%struct.srp_cmd = type { i32 }
%struct.srpt_send_ioctx = type { i32 }

@CH_CONNECTING = common dso_local global i64 0, align 8
@srp_max_req_size = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Not yet implemented: SRP_I_LOGOUT\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"received SRP_CRED_RSP\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"received SRP_AER_RSP\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Received SRP_RSP\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"received IU with unknown opcode 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srpt_rdma_ch*, %struct.srpt_recv_ioctx*)* @srpt_handle_new_iu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srpt_handle_new_iu(%struct.srpt_rdma_ch* %0, %struct.srpt_recv_ioctx* %1) #0 {
  %3 = alloca %struct.srpt_rdma_ch*, align 8
  %4 = alloca %struct.srpt_recv_ioctx*, align 8
  %5 = alloca %struct.srpt_send_ioctx*, align 8
  %6 = alloca %struct.srp_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.srpt_rdma_ch* %0, %struct.srpt_rdma_ch** %3, align 8
  store %struct.srpt_recv_ioctx* %1, %struct.srpt_recv_ioctx** %4, align 8
  store %struct.srpt_send_ioctx* null, %struct.srpt_send_ioctx** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %10 = icmp ne %struct.srpt_rdma_ch* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %4, align 8
  %15 = icmp ne %struct.srpt_recv_ioctx* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %20 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CH_CONNECTING, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %136

28:                                               ; preds = %2
  %29 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %30 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %29, i32 0, i32 3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %4, align 8
  %37 = getelementptr inbounds %struct.srpt_recv_ioctx, %struct.srpt_recv_ioctx* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %4, align 8
  %41 = getelementptr inbounds %struct.srpt_recv_ioctx, %struct.srpt_recv_ioctx* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @srp_max_req_size, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %47 = call i32 @ib_dma_sync_single_for_cpu(i32 %35, i32 %39, i32 %45, i32 %46)
  %48 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %4, align 8
  %49 = getelementptr inbounds %struct.srpt_recv_ioctx, %struct.srpt_recv_ioctx* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.srp_cmd*, %struct.srp_cmd** %50, align 8
  %52 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %4, align 8
  %53 = getelementptr inbounds %struct.srpt_recv_ioctx, %struct.srpt_recv_ioctx* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %51, i64 %56
  store %struct.srp_cmd* %57, %struct.srp_cmd** %6, align 8
  %58 = load %struct.srp_cmd*, %struct.srp_cmd** %6, align 8
  %59 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 132
  br i1 %62, label %66, label %63

63:                                               ; preds = %28
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 128
  br i1 %65, label %66, label %77

66:                                               ; preds = %63, %28
  %67 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %68 = call %struct.srpt_send_ioctx* @srpt_get_send_ioctx(%struct.srpt_rdma_ch* %67)
  store %struct.srpt_send_ioctx* %68, %struct.srpt_send_ioctx** %5, align 8
  %69 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %5, align 8
  %70 = icmp ne %struct.srpt_send_ioctx* %69, null
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %136

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %63
  %78 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %4, align 8
  %79 = getelementptr inbounds %struct.srpt_recv_ioctx, %struct.srpt_recv_ioctx* %78, i32 0, i32 0
  %80 = call i64 @list_empty(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %77
  %83 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %84 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @WARN_ON_ONCE(i32 %88)
  %90 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %4, align 8
  %91 = getelementptr inbounds %struct.srpt_recv_ioctx, %struct.srpt_recv_ioctx* %90, i32 0, i32 0
  %92 = call i32 @list_del_init(i32* %91)
  br label %93

93:                                               ; preds = %82, %77
  %94 = load i32, i32* %8, align 4
  switch i32 %94, label %113 [
    i32 132, label %95
    i32 128, label %100
    i32 130, label %105
    i32 131, label %107
    i32 133, label %109
    i32 129, label %111
  ]

95:                                               ; preds = %93
  %96 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %97 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %4, align 8
  %98 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %5, align 8
  %99 = call i32 @srpt_handle_cmd(%struct.srpt_rdma_ch* %96, %struct.srpt_recv_ioctx* %97, %struct.srpt_send_ioctx* %98)
  br label %116

100:                                              ; preds = %93
  %101 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %102 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %4, align 8
  %103 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %5, align 8
  %104 = call i32 @srpt_handle_tsk_mgmt(%struct.srpt_rdma_ch* %101, %struct.srpt_recv_ioctx* %102, %struct.srpt_send_ioctx* %103)
  br label %116

105:                                              ; preds = %93
  %106 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %116

107:                                              ; preds = %93
  %108 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %116

109:                                              ; preds = %93
  %110 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %116

111:                                              ; preds = %93
  %112 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %116

113:                                              ; preds = %93
  %114 = load i32, i32* %8, align 4
  %115 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %113, %111, %109, %107, %105, %100, %95
  %117 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %5, align 8
  %118 = icmp ne %struct.srpt_send_ioctx* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %5, align 8
  %121 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %119, %116
  %125 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %126 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %125, i32 0, i32 3
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %131 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %4, align 8
  %132 = call i32 @srpt_post_recv(%struct.TYPE_6__* %129, %struct.srpt_rdma_ch* %130, %struct.srpt_recv_ioctx* %131)
  br label %133

133:                                              ; preds = %124, %119
  store i32 1, i32* %7, align 4
  br label %134

134:                                              ; preds = %151, %133
  %135 = load i32, i32* %7, align 4
  ret i32 %135

136:                                              ; preds = %75, %27
  %137 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %4, align 8
  %138 = getelementptr inbounds %struct.srpt_recv_ioctx, %struct.srpt_recv_ioctx* %137, i32 0, i32 0
  %139 = call i64 @list_empty(i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %143 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @WARN_ON_ONCE(i32 %144)
  %146 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %4, align 8
  %147 = getelementptr inbounds %struct.srpt_recv_ioctx, %struct.srpt_recv_ioctx* %146, i32 0, i32 0
  %148 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %149 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %148, i32 0, i32 2
  %150 = call i32 @list_add_tail(i32* %147, i32* %149)
  br label %151

151:                                              ; preds = %141, %136
  br label %134
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local %struct.srpt_send_ioctx* @srpt_get_send_ioctx(%struct.srpt_rdma_ch*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @srpt_handle_cmd(%struct.srpt_rdma_ch*, %struct.srpt_recv_ioctx*, %struct.srpt_send_ioctx*) #1

declare dso_local i32 @srpt_handle_tsk_mgmt(%struct.srpt_rdma_ch*, %struct.srpt_recv_ioctx*, %struct.srpt_send_ioctx*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @srpt_post_recv(%struct.TYPE_6__*, %struct.srpt_rdma_ch*, %struct.srpt_recv_ioctx*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
