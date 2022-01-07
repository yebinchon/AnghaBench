; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_atomic_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_atomic_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_i2c = type { i32, i32, i64, i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CMD_GEN_DATA = common dso_local global i32 0, align 4
@MODE_ATOMIC = common dso_local global i64 0, align 8
@SCB_STATUS_REG = common dso_local global i32 0, align 4
@LINESTAT_SDAT_LINE_STATUS = common dso_local global i32 0, align 4
@MODE_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"atomic cmd=%s (%d) data=%#x\0A\00", align 1
@CMD_RET_DATA = common dso_local global i32 0, align 4
@CMD_RET_ACK = common dso_local global i32 0, align 4
@SCB_OVERRIDE_REG = common dso_local global i32 0, align 4
@OVERRIDE_CMD_MASK = common dso_local global i32 0, align 4
@OVERRIDE_CMD_SHIFT = common dso_local global i32 0, align 4
@OVERRIDE_MASTER = common dso_local global i32 0, align 4
@OVERRIDE_DIRECT = common dso_local global i32 0, align 4
@OVERRIDE_DATA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_i2c*, i32, i32)* @img_i2c_atomic_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_i2c_atomic_op(%struct.img_i2c* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.img_i2c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.img_i2c* %0, %struct.img_i2c** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %10 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %13 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @CMD_GEN_DATA, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %3
  %18 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %19 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MODE_ATOMIC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  %24 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %25 = load i32, i32* @SCB_STATUS_REG, align 4
  %26 = call i32 @img_i2c_readl(%struct.img_i2c* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @LINESTAT_SDAT_LINE_STATUS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 128
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %37 = load i32, i32* @MODE_RAW, align 4
  %38 = call i32 @img_i2c_switch_mode(%struct.img_i2c* %36, i32 %37)
  %39 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %40 = call i32 @img_i2c_raw_op(%struct.img_i2c* %39)
  br label %85

41:                                               ; preds = %31, %23
  br label %42

42:                                               ; preds = %41, %17, %3
  %43 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %44 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @img_i2c_atomic_op_name(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @CMD_RET_DATA, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %42
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @CMD_RET_ACK, align 4
  %59 = icmp eq i32 %57, %58
  br label %60

60:                                               ; preds = %56, %42
  %61 = phi i1 [ true, %42 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %64 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %66 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %65, i32 0, i32 4
  store i32 0, i32* %66, align 4
  %67 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %68 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %67, i32 0, i32 5
  store i64 0, i64* %68, align 8
  %69 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %70 = load i32, i32* @SCB_OVERRIDE_REG, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @OVERRIDE_CMD_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @OVERRIDE_CMD_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* @OVERRIDE_MASTER, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @OVERRIDE_DIRECT, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @OVERRIDE_DATA_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = or i32 %79, %82
  %84 = call i32 @img_i2c_writel(%struct.img_i2c* %69, i32 %70, i32 %83)
  br label %85

85:                                               ; preds = %60, %35
  ret void
}

declare dso_local i32 @img_i2c_readl(%struct.img_i2c*, i32) #1

declare dso_local i32 @img_i2c_switch_mode(%struct.img_i2c*, i32) #1

declare dso_local i32 @img_i2c_raw_op(%struct.img_i2c*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @img_i2c_atomic_op_name(i32) #1

declare dso_local i32 @img_i2c_writel(%struct.img_i2c*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
