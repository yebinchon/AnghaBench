; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_ipu_update_channel_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_ipu_update_channel_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.idmac_channel = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ipu_data = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@IPU_CHA_BUF0_RDY = common dso_local global i32 0, align 4
@IPU_CHANNEL_READY = common dso_local global i8* null, align 8
@IPU_IMA_ADDR = common dso_local global i32 0, align 4
@IPU_IMA_DATA = common dso_local global i32 0, align 4
@IPU_CHA_BUF1_RDY = common dso_local global i32 0, align 4
@IPU_CHA_DB_MODE_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idmac_channel*, i32, i32)* @ipu_update_channel_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_update_channel_buffer(%struct.idmac_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.idmac_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.idmac_channel* %0, %struct.idmac_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %11 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipu_data, i32 0, i32 0), i64 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %3
  %19 = load i32, i32* @IPU_CHA_BUF0_RDY, align 4
  %20 = call i64 @idmac_read_ipureg(%struct.TYPE_7__* @ipu_data, i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = shl i64 1, %23
  %25 = and i64 %21, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ipu_ic_disable_task(%struct.TYPE_7__* @ipu_data, i32 %28)
  %30 = load i8*, i8** @IPU_CHANNEL_READY, align 8
  %31 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %32 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %27, %18
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @dma_param_addr(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = add i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @IPU_IMA_ADDR, align 4
  %40 = call i32 @idmac_write_ipureg(%struct.TYPE_7__* @ipu_data, i32 %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @IPU_IMA_DATA, align 4
  %43 = call i32 @idmac_write_ipureg(%struct.TYPE_7__* @ipu_data, i32 %41, i32 %42)
  br label %88

44:                                               ; preds = %3
  %45 = load i32, i32* @IPU_CHA_BUF1_RDY, align 4
  %46 = call i64 @idmac_read_ipureg(%struct.TYPE_7__* @ipu_data, i32 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = shl i64 1, %49
  %51 = and i64 %47, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @ipu_ic_disable_task(%struct.TYPE_7__* @ipu_data, i32 %54)
  %56 = load i8*, i8** @IPU_CHANNEL_READY, align 8
  %57 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %58 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %53, %44
  %60 = load i32, i32* @IPU_CHA_DB_MODE_SEL, align 4
  %61 = call i64 @idmac_read_ipureg(%struct.TYPE_7__* @ipu_data, i32 %60)
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = shl i64 1, %64
  %66 = and i64 %62, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %59
  %69 = load i64, i64* %8, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = shl i64 1, %71
  %73 = or i64 %69, %72
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* @IPU_CHA_DB_MODE_SEL, align 4
  %76 = call i32 @idmac_write_ipureg(%struct.TYPE_7__* @ipu_data, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %59
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @dma_param_addr(i32 %78)
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 9
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* @IPU_IMA_ADDR, align 4
  %84 = call i32 @idmac_write_ipureg(%struct.TYPE_7__* @ipu_data, i32 %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @IPU_IMA_DATA, align 4
  %87 = call i32 @idmac_write_ipureg(%struct.TYPE_7__* @ipu_data, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %77, %33
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipu_data, i32 0, i32 0), i64 %89)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @idmac_read_ipureg(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ipu_ic_disable_task(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @idmac_write_ipureg(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dma_param_addr(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
