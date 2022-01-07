; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_ipu_init_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_ipu_init_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmac = type { i32 }
%struct.idmac_channel = type { i32, %struct.TYPE_2__, %union.ipu_channel_param }
%struct.TYPE_2__ = type { i32 }
%union.ipu_channel_param = type { i32 }
%struct.ipu = type { i64, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"init channel = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IC_CONF = common dso_local global i32 0, align 4
@IC_CONF_CSI_MEM_WR_EN = common dso_local global i32 0, align 4
@IPU_FS_PROC_FLOW = common dso_local global i32 0, align 4
@FS_ENC_IN_VALID = common dso_local global i32 0, align 4
@IPU_CONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idmac*, %struct.idmac_channel*)* @ipu_init_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_init_channel(%struct.idmac* %0, %struct.idmac_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.idmac*, align 8
  %5 = alloca %struct.idmac_channel*, align 8
  %6 = alloca %union.ipu_channel_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipu*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.idmac* %0, %struct.idmac** %4, align 8
  store %struct.idmac_channel* %1, %struct.idmac_channel** %5, align 8
  %14 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %15 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %14, i32 0, i32 2
  store %union.ipu_channel_param* %15, %union.ipu_channel_param** %6, align 8
  %16 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %17 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.idmac*, %struct.idmac** %4, align 8
  %21 = call %struct.ipu* @to_ipu(%struct.idmac* %20)
  store %struct.ipu* %21, %struct.ipu** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.ipu*, %struct.ipu** %11, align 8
  %23 = getelementptr inbounds %struct.ipu, %struct.ipu* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 129
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 128
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 130
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %108

38:                                               ; preds = %32, %29, %2
  %39 = load %struct.ipu*, %struct.ipu** %11, align 8
  %40 = getelementptr inbounds %struct.ipu, %struct.ipu* %39, i32 0, i32 1
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load i32, i32* %8, align 4
  switch i32 %43, label %70 [
    i32 130, label %44
    i32 131, label %55
    i32 129, label %69
    i32 128, label %69
  ]

44:                                               ; preds = %38
  store i32 16, i32* %13, align 4
  %45 = load %struct.ipu*, %struct.ipu** %11, align 8
  %46 = load i32, i32* @IC_CONF, align 4
  %47 = call i32 @idmac_read_icreg(%struct.ipu* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.ipu*, %struct.ipu** %11, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @IC_CONF_CSI_MEM_WR_EN, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = load i32, i32* @IC_CONF, align 4
  %54 = call i32 @idmac_write_icreg(%struct.ipu* %48, i32 %52, i32 %53)
  br label %71

55:                                               ; preds = %38
  store i32 16, i32* %13, align 4
  %56 = load %struct.ipu*, %struct.ipu** %11, align 8
  %57 = load i32, i32* @IPU_FS_PROC_FLOW, align 4
  %58 = call i32 @idmac_read_ipureg(%struct.ipu* %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.ipu*, %struct.ipu** %11, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @FS_ENC_IN_VALID, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = load i32, i32* @IPU_FS_PROC_FLOW, align 4
  %65 = call i32 @idmac_write_ipureg(%struct.ipu* %59, i32 %63, i32 %64)
  %66 = load %struct.ipu*, %struct.ipu** %11, align 8
  %67 = load %union.ipu_channel_param*, %union.ipu_channel_param** %6, align 8
  %68 = call i32 @ipu_ic_init_prpenc(%struct.ipu* %66, %union.ipu_channel_param* %67, i32 1)
  store i32 %68, i32* %12, align 4
  br label %71

69:                                               ; preds = %38, %38
  store i32 4, i32* %13, align 4
  br label %70

70:                                               ; preds = %38, %69
  br label %71

71:                                               ; preds = %70, %55, %44
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = shl i64 1, %73
  %75 = load %struct.ipu*, %struct.ipu** %11, align 8
  %76 = getelementptr inbounds %struct.ipu, %struct.ipu* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = or i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = load %struct.ipu*, %struct.ipu** %11, align 8
  %80 = load i32, i32* @IPU_CONF, align 4
  %81 = call i32 @idmac_read_ipureg(%struct.ipu* %79, i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @ipu_channel_conf_mask(i32 %82)
  %84 = or i32 %81, %83
  store i32 %84, i32* %7, align 4
  %85 = load %struct.ipu*, %struct.ipu** %11, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @IPU_CONF, align 4
  %88 = call i32 @idmac_write_ipureg(%struct.ipu* %85, i32 %86, i32 %87)
  %89 = load %struct.ipu*, %struct.ipu** %11, align 8
  %90 = getelementptr inbounds %struct.ipu, %struct.ipu* %89, i32 0, i32 1
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %71
  %96 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %97 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @idmac_desc_alloc(%struct.idmac_channel* %101, i32 %102)
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %100, %95, %71
  %105 = load %struct.ipu*, %struct.ipu** %11, align 8
  %106 = call i32 @dump_idmac_reg(%struct.ipu* %105)
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %35
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.ipu* @to_ipu(%struct.idmac*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idmac_read_icreg(%struct.ipu*, i32) #1

declare dso_local i32 @idmac_write_icreg(%struct.ipu*, i32, i32) #1

declare dso_local i32 @idmac_read_ipureg(%struct.ipu*, i32) #1

declare dso_local i32 @idmac_write_ipureg(%struct.ipu*, i32, i32) #1

declare dso_local i32 @ipu_ic_init_prpenc(%struct.ipu*, %union.ipu_channel_param*, i32) #1

declare dso_local i32 @ipu_channel_conf_mask(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @idmac_desc_alloc(%struct.idmac_channel*, i32) #1

declare dso_local i32 @dump_idmac_reg(%struct.ipu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
