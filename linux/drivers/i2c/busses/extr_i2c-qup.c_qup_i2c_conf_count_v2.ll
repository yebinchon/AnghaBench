; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_conf_count_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_conf_count_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { i32, i64, %struct.qup_i2c_block }
%struct.qup_i2c_block = type { i32, i32, i64, i64 }

@I2C_MINI_CORE = common dso_local global i32 0, align 4
@I2C_N_VAL_V2 = common dso_local global i32 0, align 4
@QUP_MX_OUTPUT_CNT = common dso_local global i64 0, align 8
@QUP_MX_WRITE_CNT = common dso_local global i64 0, align 8
@QUP_MX_INPUT_CNT = common dso_local global i64 0, align 8
@QUP_MX_READ_CNT = common dso_local global i64 0, align 8
@QUP_NO_INPUT = common dso_local global i32 0, align 4
@QUP_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qup_i2c_dev*)* @qup_i2c_conf_count_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qup_i2c_conf_count_v2(%struct.qup_i2c_dev* %0) #0 {
  %2 = alloca %struct.qup_i2c_dev*, align 8
  %3 = alloca %struct.qup_i2c_block*, align 8
  %4 = alloca i32, align 4
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %2, align 8
  %5 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %6 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %5, i32 0, i32 2
  store %struct.qup_i2c_block* %6, %struct.qup_i2c_block** %3, align 8
  %7 = load i32, i32* @I2C_MINI_CORE, align 4
  %8 = load i32, i32* @I2C_N_VAL_V2, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %11 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %16 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %19 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %17, %20
  %22 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %23 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @QUP_MX_OUTPUT_CNT, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  br label %42

28:                                               ; preds = %1
  %29 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %30 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %33 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %31, %34
  %36 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %37 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @QUP_MX_WRITE_CNT, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  br label %42

42:                                               ; preds = %28, %14
  %43 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %44 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %42
  %48 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %49 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %54 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %57 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %55, %58
  %60 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %61 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @QUP_MX_INPUT_CNT, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  br label %80

66:                                               ; preds = %47
  %67 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %68 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %71 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %69, %72
  %74 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %75 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @QUP_MX_READ_CNT, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  br label %80

80:                                               ; preds = %66, %52
  br label %85

81:                                               ; preds = %42
  %82 = load i32, i32* @QUP_NO_INPUT, align 4
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %81, %80
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %88 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @QUP_CONFIG, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
