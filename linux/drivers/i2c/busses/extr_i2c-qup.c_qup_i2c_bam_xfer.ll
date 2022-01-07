; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_bam_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_bam_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.qup_i2c_dev = type { i32, i32, i64, %struct.i2c_msg*, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@QUP_MX_INPUT_CNT = common dso_local global i64 0, align 8
@QUP_MX_OUTPUT_CNT = common dso_local global i64 0, align 8
@QUP_REPACK_EN = common dso_local global i32 0, align 4
@QUP_BAM_MODE = common dso_local global i32 0, align 4
@QUP_IO_MODE = common dso_local global i64 0, align 8
@QUP_OPERATIONAL_MASK = common dso_local global i64 0, align 8
@QUP_RUN_STATE = common dso_local global i32 0, align 4
@QUP_I2C_CLK_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @qup_i2c_bam_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qup_i2c_bam_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qup_i2c_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %11 = call %struct.qup_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %10)
  store %struct.qup_i2c_dev* %11, %struct.qup_i2c_dev** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %13 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @enable_irq(i32 %14)
  %16 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %17 = call i32 @qup_i2c_req_dma(%struct.qup_i2c_dev* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %130

21:                                               ; preds = %3
  %22 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %23 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @QUP_MX_INPUT_CNT, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 0, i64 %26)
  %28 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %29 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @QUP_MX_OUTPUT_CNT, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 0, i64 %32)
  %34 = load i32, i32* @QUP_REPACK_EN, align 4
  %35 = load i32, i32* @QUP_BAM_MODE, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %38 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @QUP_IO_MODE, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %44 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @QUP_OPERATIONAL_MASK, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 768, i64 %47)
  %49 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %50 = load i32, i32* @QUP_RUN_STATE, align 4
  %51 = call i32 @qup_i2c_change_state(%struct.qup_i2c_dev* %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %21
  br label %130

55:                                               ; preds = %21
  %56 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %57 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %60 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %59, i32 0, i32 7
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @QUP_I2C_CLK_CTL, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  %65 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %66 = call i32 @qup_i2c_bam_clear_tag_buffers(%struct.qup_i2c_dev* %65)
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %126, %55
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %129

71:                                               ; preds = %67
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i64 %74
  %76 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %77 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %76, i32 0, i32 3
  store %struct.i2c_msg* %75, %struct.i2c_msg** %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, 1
  %81 = icmp eq i32 %78, %80
  %82 = zext i1 %81 to i32
  %83 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %84 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %86 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %87 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %86, i32 0, i32 3
  %88 = load %struct.i2c_msg*, %struct.i2c_msg** %87, align 8
  %89 = call i32 @qup_i2c_bam_make_desc(%struct.qup_i2c_dev* %85, %struct.i2c_msg* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %71
  br label %129

93:                                               ; preds = %71
  %94 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %95 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %99 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %97, %100
  br i1 %101, label %116, label %102

102:                                              ; preds = %93
  %103 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %104 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %108 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %106, %109
  br i1 %110, label %116, label %111

111:                                              ; preds = %102
  %112 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %113 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %111, %102, %93
  %117 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %118 = call i32 @qup_i2c_bam_schedule_desc(%struct.qup_i2c_dev* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %129

122:                                              ; preds = %116
  %123 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %124 = call i32 @qup_i2c_bam_clear_tag_buffers(%struct.qup_i2c_dev* %123)
  br label %125

125:                                              ; preds = %122, %111
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %67

129:                                              ; preds = %121, %92, %67
  br label %130

130:                                              ; preds = %129, %54, %20
  %131 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %132 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @disable_irq(i32 %133)
  %135 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %7, align 8
  %136 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %135, i32 0, i32 3
  store %struct.i2c_msg* null, %struct.i2c_msg** %136, align 8
  %137 = load i32, i32* %8, align 4
  ret i32 %137
}

declare dso_local %struct.qup_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @qup_i2c_req_dma(%struct.qup_i2c_dev*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @qup_i2c_change_state(%struct.qup_i2c_dev*, i32) #1

declare dso_local i32 @qup_i2c_bam_clear_tag_buffers(%struct.qup_i2c_dev*) #1

declare dso_local i32 @qup_i2c_bam_make_desc(%struct.qup_i2c_dev*, %struct.i2c_msg*) #1

declare dso_local i32 @qup_i2c_bam_schedule_desc(%struct.qup_i2c_dev*) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
