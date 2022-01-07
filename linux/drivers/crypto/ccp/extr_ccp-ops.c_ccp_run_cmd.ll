; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_run_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_run_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_cmd_queue = type { %struct.TYPE_8__*, i32, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.ccp_cmd_queue*)* }
%struct.ccp_cmd = type { i32, i32, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@CCP_CMD_PASSTHRU_NO_DMA_MAP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccp_run_cmd(%struct.ccp_cmd_queue* %0, %struct.ccp_cmd* %1) #0 {
  %3 = alloca %struct.ccp_cmd_queue*, align 8
  %4 = alloca %struct.ccp_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.ccp_cmd_queue* %0, %struct.ccp_cmd_queue** %3, align 8
  store %struct.ccp_cmd* %1, %struct.ccp_cmd** %4, align 8
  %6 = load %struct.ccp_cmd*, %struct.ccp_cmd** %4, align 8
  %7 = getelementptr inbounds %struct.ccp_cmd, %struct.ccp_cmd* %6, i32 0, i32 3
  store i64 0, i64* %7, align 8
  %8 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %9 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %11 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %13 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32 (%struct.ccp_cmd_queue*)*, i32 (%struct.ccp_cmd_queue*)** %19, align 8
  %21 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %22 = call i32 %20(%struct.ccp_cmd_queue* %21)
  %23 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %24 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ccp_cmd*, %struct.ccp_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.ccp_cmd, %struct.ccp_cmd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %83 [
    i32 134, label %28
    i32 128, label %47
    i32 133, label %51
    i32 129, label %55
    i32 130, label %59
    i32 131, label %63
    i32 132, label %79
  ]

28:                                               ; preds = %2
  %29 = load %struct.ccp_cmd*, %struct.ccp_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.ccp_cmd, %struct.ccp_cmd* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %42 [
    i32 136, label %34
    i32 135, label %38
  ]

34:                                               ; preds = %28
  %35 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %36 = load %struct.ccp_cmd*, %struct.ccp_cmd** %4, align 8
  %37 = call i32 @ccp_run_aes_cmac_cmd(%struct.ccp_cmd_queue* %35, %struct.ccp_cmd* %36)
  store i32 %37, i32* %5, align 4
  br label %46

38:                                               ; preds = %28
  %39 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %40 = load %struct.ccp_cmd*, %struct.ccp_cmd** %4, align 8
  %41 = call i32 @ccp_run_aes_gcm_cmd(%struct.ccp_cmd_queue* %39, %struct.ccp_cmd* %40)
  store i32 %41, i32* %5, align 4
  br label %46

42:                                               ; preds = %28
  %43 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %44 = load %struct.ccp_cmd*, %struct.ccp_cmd** %4, align 8
  %45 = call i32 @ccp_run_aes_cmd(%struct.ccp_cmd_queue* %43, %struct.ccp_cmd* %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %38, %34
  br label %86

47:                                               ; preds = %2
  %48 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %49 = load %struct.ccp_cmd*, %struct.ccp_cmd** %4, align 8
  %50 = call i32 @ccp_run_xts_aes_cmd(%struct.ccp_cmd_queue* %48, %struct.ccp_cmd* %49)
  store i32 %50, i32* %5, align 4
  br label %86

51:                                               ; preds = %2
  %52 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %53 = load %struct.ccp_cmd*, %struct.ccp_cmd** %4, align 8
  %54 = call i32 @ccp_run_des3_cmd(%struct.ccp_cmd_queue* %52, %struct.ccp_cmd* %53)
  store i32 %54, i32* %5, align 4
  br label %86

55:                                               ; preds = %2
  %56 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %57 = load %struct.ccp_cmd*, %struct.ccp_cmd** %4, align 8
  %58 = call i32 @ccp_run_sha_cmd(%struct.ccp_cmd_queue* %56, %struct.ccp_cmd* %57)
  store i32 %58, i32* %5, align 4
  br label %86

59:                                               ; preds = %2
  %60 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %61 = load %struct.ccp_cmd*, %struct.ccp_cmd** %4, align 8
  %62 = call i32 @ccp_run_rsa_cmd(%struct.ccp_cmd_queue* %60, %struct.ccp_cmd* %61)
  store i32 %62, i32* %5, align 4
  br label %86

63:                                               ; preds = %2
  %64 = load %struct.ccp_cmd*, %struct.ccp_cmd** %4, align 8
  %65 = getelementptr inbounds %struct.ccp_cmd, %struct.ccp_cmd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CCP_CMD_PASSTHRU_NO_DMA_MAP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %72 = load %struct.ccp_cmd*, %struct.ccp_cmd** %4, align 8
  %73 = call i32 @ccp_run_passthru_nomap_cmd(%struct.ccp_cmd_queue* %71, %struct.ccp_cmd* %72)
  store i32 %73, i32* %5, align 4
  br label %78

74:                                               ; preds = %63
  %75 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %76 = load %struct.ccp_cmd*, %struct.ccp_cmd** %4, align 8
  %77 = call i32 @ccp_run_passthru_cmd(%struct.ccp_cmd_queue* %75, %struct.ccp_cmd* %76)
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %70
  br label %86

79:                                               ; preds = %2
  %80 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %81 = load %struct.ccp_cmd*, %struct.ccp_cmd** %4, align 8
  %82 = call i32 @ccp_run_ecc_cmd(%struct.ccp_cmd_queue* %80, %struct.ccp_cmd* %81)
  store i32 %82, i32* %5, align 4
  br label %86

83:                                               ; preds = %2
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %83, %79, %78, %59, %55, %51, %47, %46
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @ccp_run_aes_cmac_cmd(%struct.ccp_cmd_queue*, %struct.ccp_cmd*) #1

declare dso_local i32 @ccp_run_aes_gcm_cmd(%struct.ccp_cmd_queue*, %struct.ccp_cmd*) #1

declare dso_local i32 @ccp_run_aes_cmd(%struct.ccp_cmd_queue*, %struct.ccp_cmd*) #1

declare dso_local i32 @ccp_run_xts_aes_cmd(%struct.ccp_cmd_queue*, %struct.ccp_cmd*) #1

declare dso_local i32 @ccp_run_des3_cmd(%struct.ccp_cmd_queue*, %struct.ccp_cmd*) #1

declare dso_local i32 @ccp_run_sha_cmd(%struct.ccp_cmd_queue*, %struct.ccp_cmd*) #1

declare dso_local i32 @ccp_run_rsa_cmd(%struct.ccp_cmd_queue*, %struct.ccp_cmd*) #1

declare dso_local i32 @ccp_run_passthru_nomap_cmd(%struct.ccp_cmd_queue*, %struct.ccp_cmd*) #1

declare dso_local i32 @ccp_run_passthru_cmd(%struct.ccp_cmd_queue*, %struct.ccp_cmd*) #1

declare dso_local i32 @ccp_run_ecc_cmd(%struct.ccp_cmd_queue*, %struct.ccp_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
