; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_conf_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_conf_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { i64, i64, i64, %struct.qup_i2c_block }
%struct.qup_i2c_block = type { i32, i64, i32, i64 }

@I2C_MINI_CORE = common dso_local global i32 0, align 4
@I2C_N_VAL = common dso_local global i32 0, align 4
@QUP_REPACK_EN = common dso_local global i32 0, align 4
@QUP_OUTPUT_BLK_MODE = common dso_local global i32 0, align 4
@QUP_MX_WRITE_CNT = common dso_local global i64 0, align 8
@QUP_MX_OUTPUT_CNT = common dso_local global i64 0, align 8
@QUP_INPUT_BLK_MODE = common dso_local global i32 0, align 4
@QUP_MX_READ_CNT = common dso_local global i64 0, align 8
@QUP_MX_INPUT_CNT = common dso_local global i64 0, align 8
@QUP_NO_INPUT = common dso_local global i32 0, align 4
@QUP_CONFIG = common dso_local global i64 0, align 8
@QUP_IO_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qup_i2c_dev*)* @qup_i2c_conf_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qup_i2c_conf_v1(%struct.qup_i2c_dev* %0) #0 {
  %2 = alloca %struct.qup_i2c_dev*, align 8
  %3 = alloca %struct.qup_i2c_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %2, align 8
  %6 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %7 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %6, i32 0, i32 3
  store %struct.qup_i2c_block* %7, %struct.qup_i2c_block** %3, align 8
  %8 = load i32, i32* @I2C_MINI_CORE, align 4
  %9 = load i32, i32* @I2C_N_VAL, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @QUP_REPACK_EN, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %13 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %16 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  %21 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %22 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %24 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %27 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %33 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %35 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %1
  %39 = load i32, i32* @QUP_OUTPUT_BLK_MODE, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %43 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @QUP_MX_WRITE_CNT, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 0, i64 %46)
  %48 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %49 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %53 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @QUP_MX_OUTPUT_CNT, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  br label %75

58:                                               ; preds = %1
  %59 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %60 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @QUP_MX_OUTPUT_CNT, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 0, i64 %63)
  %65 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %66 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %70 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @QUP_MX_WRITE_CNT, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  br label %75

75:                                               ; preds = %58, %38
  %76 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %77 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %123

80:                                               ; preds = %75
  %81 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %82 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %80
  %86 = load i32, i32* @QUP_INPUT_BLK_MODE, align 4
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %90 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @QUP_MX_READ_CNT, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 0, i64 %93)
  %95 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %96 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %100 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @QUP_MX_INPUT_CNT, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i32 %98, i64 %103)
  br label %122

105:                                              ; preds = %80
  %106 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %107 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @QUP_MX_INPUT_CNT, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel(i32 0, i64 %110)
  %112 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %3, align 8
  %113 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %117 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @QUP_MX_READ_CNT, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @writel(i32 %115, i64 %120)
  br label %122

122:                                              ; preds = %105, %85
  br label %127

123:                                              ; preds = %75
  %124 = load i32, i32* @QUP_NO_INPUT, align 4
  %125 = load i32, i32* %4, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %123, %122
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %130 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @QUP_CONFIG, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @writel(i32 %128, i64 %133)
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %137 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @QUP_IO_MODE, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @writel(i32 %135, i64 %140)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
