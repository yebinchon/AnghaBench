; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ads7846.c_ads7846_read12_ser.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ads7846.c_ads7846_read12_ser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_device = type { i32 }
%struct.ads7846 = type { i32, i32, i64 }
%struct.ser_req = type { i32, i32, %struct.TYPE_3__*, i32, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32*, i64*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REF_ON = common dso_local global i64 0, align 8
@ADS_PD10_REF_ON = common dso_local global i32 0, align 4
@ADS_PD10_ADC_ON = common dso_local global i32 0, align 4
@PWRDOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @ads7846_read12_ser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads7846_read12_ser(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.ads7846*, align 8
  %8 = alloca %struct.ser_req*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.spi_device* @to_spi_device(%struct.device* %10)
  store %struct.spi_device* %11, %struct.spi_device** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.ads7846* @dev_get_drvdata(%struct.device* %12)
  store %struct.ads7846* %13, %struct.ads7846** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ser_req* @kzalloc(i32 48, i32 %14)
  store %struct.ser_req* %15, %struct.ser_req** %8, align 8
  %16 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %17 = icmp ne %struct.ser_req* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %203

21:                                               ; preds = %2
  %22 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %23 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %22, i32 0, i32 1
  %24 = call i32 @spi_message_init(i32* %23)
  %25 = load %struct.ads7846*, %struct.ads7846** %7, align 8
  %26 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %82

29:                                               ; preds = %21
  %30 = load i64, i64* @REF_ON, align 8
  %31 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %32 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %31, i32 0, i32 6
  store i64 %30, i64* %32, align 8
  %33 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %34 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %33, i32 0, i32 6
  %35 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %36 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i64* %34, i64** %39, align 8
  %40 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %41 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %46 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 0
  %49 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %50 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %49, i32 0, i32 1
  %51 = call i32 @spi_message_add_tail(%struct.TYPE_3__* %48, i32* %50)
  %52 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %53 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %52, i32 0, i32 3
  %54 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %55 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32* %53, i32** %58, align 8
  %59 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %60 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 2, i32* %63, align 8
  %64 = load %struct.ads7846*, %struct.ads7846** %7, align 8
  %65 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %68 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  store i32 %66, i32* %71, align 8
  %72 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %73 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 1
  %76 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %77 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %76, i32 0, i32 1
  %78 = call i32 @spi_message_add_tail(%struct.TYPE_3__* %75, i32* %77)
  %79 = load i32, i32* @ADS_PD10_REF_ON, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %29, %21
  %83 = load i32, i32* @ADS_PD10_ADC_ON, align 4
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = zext i32 %86 to i64
  %88 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %89 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %88, i32 0, i32 5
  store i64 %87, i64* %89, align 8
  %90 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %91 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %90, i32 0, i32 5
  %92 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %93 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %92, i32 0, i32 2
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 2
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store i64* %91, i64** %96, align 8
  %97 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %98 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %97, i32 0, i32 2
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 2
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %103 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 2
  %106 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %107 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %106, i32 0, i32 1
  %108 = call i32 @spi_message_add_tail(%struct.TYPE_3__* %105, i32* %107)
  %109 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %110 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %109, i32 0, i32 0
  %111 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %112 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %111, i32 0, i32 2
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 3
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  store i32* %110, i32** %115, align 8
  %116 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %117 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %116, i32 0, i32 2
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 3
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i32 2, i32* %120, align 8
  %121 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %122 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %121, i32 0, i32 2
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 3
  %125 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %126 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %125, i32 0, i32 1
  %127 = call i32 @spi_message_add_tail(%struct.TYPE_3__* %124, i32* %126)
  %128 = load i64, i64* @PWRDOWN, align 8
  %129 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %130 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %129, i32 0, i32 4
  store i64 %128, i64* %130, align 8
  %131 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %132 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %131, i32 0, i32 4
  %133 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %134 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %133, i32 0, i32 2
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 4
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  store i64* %132, i64** %137, align 8
  %138 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %139 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %138, i32 0, i32 2
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 4
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  %143 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %144 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %143, i32 0, i32 2
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 4
  %147 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %148 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %147, i32 0, i32 1
  %149 = call i32 @spi_message_add_tail(%struct.TYPE_3__* %146, i32* %148)
  %150 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %151 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %150, i32 0, i32 3
  %152 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %153 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %152, i32 0, i32 2
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 5
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  store i32* %151, i32** %156, align 8
  %157 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %158 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %157, i32 0, i32 2
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 5
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  store i32 2, i32* %161, align 8
  %162 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %163 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %162, i32 0, i32 2
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 5
  %166 = call i32 @CS_CHANGE(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %165)
  %167 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %168 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %167, i32 0, i32 2
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i64 5
  %171 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %172 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %171, i32 0, i32 1
  %173 = call i32 @spi_message_add_tail(%struct.TYPE_3__* %170, i32* %172)
  %174 = load %struct.ads7846*, %struct.ads7846** %7, align 8
  %175 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %174, i32 0, i32 0
  %176 = call i32 @mutex_lock(i32* %175)
  %177 = load %struct.ads7846*, %struct.ads7846** %7, align 8
  %178 = call i32 @ads7846_stop(%struct.ads7846* %177)
  %179 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %180 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %181 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %180, i32 0, i32 1
  %182 = call i32 @spi_sync(%struct.spi_device* %179, i32* %181)
  store i32 %182, i32* %9, align 4
  %183 = load %struct.ads7846*, %struct.ads7846** %7, align 8
  %184 = call i32 @ads7846_restart(%struct.ads7846* %183)
  %185 = load %struct.ads7846*, %struct.ads7846** %7, align 8
  %186 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %185, i32 0, i32 0
  %187 = call i32 @mutex_unlock(i32* %186)
  %188 = load i32, i32* %9, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %82
  %191 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %192 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @be16_to_cpu(i32 %193)
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %9, align 4
  %196 = ashr i32 %195, 3
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = and i32 %197, 4095
  store i32 %198, i32* %9, align 4
  br label %199

199:                                              ; preds = %190, %82
  %200 = load %struct.ser_req*, %struct.ser_req** %8, align 8
  %201 = call i32 @kfree(%struct.ser_req* %200)
  %202 = load i32, i32* %9, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %199, %18
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.ads7846* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.ser_req* @kzalloc(i32, i32) #1

declare dso_local i32 @spi_message_init(i32*) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @CS_CHANGE(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ads7846_stop(%struct.ads7846*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, i32*) #1

declare dso_local i32 @ads7846_restart(%struct.ads7846*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.ser_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
