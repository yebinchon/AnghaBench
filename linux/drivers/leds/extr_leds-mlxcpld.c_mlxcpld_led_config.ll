; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mlxcpld.c_mlxcpld_led_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mlxcpld.c_mlxcpld_led_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }
%struct.device = type { i32 }
%struct.mlxcpld_led_pdata = type { i32, %struct.TYPE_13__*, %struct.TYPE_8__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 (%struct.TYPE_11__*, i64)*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxcpld_led_blink_set = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@mlxcpld_led = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.mlxcpld_led_pdata*)* @mlxcpld_led_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxcpld_led_config(%struct.device* %0, %struct.mlxcpld_led_pdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mlxcpld_led_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.mlxcpld_led_pdata* %1, %struct.mlxcpld_led_pdata** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load %struct.mlxcpld_led_pdata*, %struct.mlxcpld_led_pdata** %5, align 8
  %10 = getelementptr inbounds %struct.mlxcpld_led_pdata, %struct.mlxcpld_led_pdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.TYPE_13__* @devm_kcalloc(%struct.device* %8, i32 %11, i32 4, i32 %12)
  %14 = load %struct.mlxcpld_led_pdata*, %struct.mlxcpld_led_pdata** %5, align 8
  %15 = getelementptr inbounds %struct.mlxcpld_led_pdata, %struct.mlxcpld_led_pdata* %14, i32 0, i32 1
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %15, align 8
  %16 = load %struct.mlxcpld_led_pdata*, %struct.mlxcpld_led_pdata** %5, align 8
  %17 = getelementptr inbounds %struct.mlxcpld_led_pdata, %struct.mlxcpld_led_pdata* %16, i32 0, i32 1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = icmp ne %struct.TYPE_13__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %190

23:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %186, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.mlxcpld_led_pdata*, %struct.mlxcpld_led_pdata** %5, align 8
  %27 = getelementptr inbounds %struct.mlxcpld_led_pdata, %struct.mlxcpld_led_pdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %189

30:                                               ; preds = %24
  %31 = load %struct.mlxcpld_led_pdata*, %struct.mlxcpld_led_pdata** %5, align 8
  %32 = getelementptr inbounds %struct.mlxcpld_led_pdata, %struct.mlxcpld_led_pdata* %31, i32 0, i32 2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlxcpld_led_pdata*, %struct.mlxcpld_led_pdata** %5, align 8
  %40 = getelementptr inbounds %struct.mlxcpld_led_pdata, %struct.mlxcpld_led_pdata* %39, i32 0, i32 1
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 5
  store i32 %38, i32* %46, align 4
  %47 = load %struct.mlxcpld_led_pdata*, %struct.mlxcpld_led_pdata** %5, align 8
  %48 = getelementptr inbounds %struct.mlxcpld_led_pdata, %struct.mlxcpld_led_pdata* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mlxcpld_led_pdata*, %struct.mlxcpld_led_pdata** %5, align 8
  %56 = getelementptr inbounds %struct.mlxcpld_led_pdata, %struct.mlxcpld_led_pdata* %55, i32 0, i32 1
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 4
  store i32 %54, i32* %62, align 8
  %63 = load %struct.mlxcpld_led_pdata*, %struct.mlxcpld_led_pdata** %5, align 8
  %64 = getelementptr inbounds %struct.mlxcpld_led_pdata, %struct.mlxcpld_led_pdata* %63, i32 0, i32 1
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.mlxcpld_led_pdata*, %struct.mlxcpld_led_pdata** %5, align 8
  %72 = getelementptr inbounds %struct.mlxcpld_led_pdata, %struct.mlxcpld_led_pdata* %71, i32 0, i32 1
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  store i32 (%struct.TYPE_11__*, i64)* @mlxcpld_led_brightness_set, i32 (%struct.TYPE_11__*, i64)** %78, align 8
  %79 = load i32, i32* @mlxcpld_led_blink_set, align 4
  %80 = load %struct.mlxcpld_led_pdata*, %struct.mlxcpld_led_pdata** %5, align 8
  %81 = getelementptr inbounds %struct.mlxcpld_led_pdata, %struct.mlxcpld_led_pdata* %80, i32 0, i32 1
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  store i32 %79, i32* %87, align 8
  %88 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %89 = load %struct.mlxcpld_led_pdata*, %struct.mlxcpld_led_pdata** %5, align 8
  %90 = getelementptr inbounds %struct.mlxcpld_led_pdata, %struct.mlxcpld_led_pdata* %89, i32 0, i32 1
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  store i32 %88, i32* %96, align 4
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load %struct.mlxcpld_led_pdata*, %struct.mlxcpld_led_pdata** %5, align 8
  %99 = getelementptr inbounds %struct.mlxcpld_led_pdata, %struct.mlxcpld_led_pdata* %98, i32 0, i32 1
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = call i32 @devm_led_classdev_register(%struct.device* %97, %struct.TYPE_11__* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %30
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %3, align 4
  br label %190

110:                                              ; preds = %30
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mlxcpld_led, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.mlxcpld_led_pdata*, %struct.mlxcpld_led_pdata** %5, align 8
  %120 = getelementptr inbounds %struct.mlxcpld_led_pdata, %struct.mlxcpld_led_pdata* %119, i32 0, i32 1
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  store i32 %118, i32* %126, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mlxcpld_led, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.mlxcpld_led_pdata*, %struct.mlxcpld_led_pdata** %5, align 8
  %136 = getelementptr inbounds %struct.mlxcpld_led_pdata, %struct.mlxcpld_led_pdata* %135, i32 0, i32 1
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  store i32 %134, i32* %142, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mlxcpld_led, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.mlxcpld_led_pdata*, %struct.mlxcpld_led_pdata** %5, align 8
  %152 = getelementptr inbounds %struct.mlxcpld_led_pdata, %struct.mlxcpld_led_pdata* %151, i32 0, i32 1
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i32 %150, i32* %158, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mlxcpld_led, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %185

168:                                              ; preds = %110
  %169 = load %struct.mlxcpld_led_pdata*, %struct.mlxcpld_led_pdata** %5, align 8
  %170 = getelementptr inbounds %struct.mlxcpld_led_pdata, %struct.mlxcpld_led_pdata* %169, i32 0, i32 1
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mlxcpld_led, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @mlxcpld_led_brightness_set(%struct.TYPE_11__* %175, i64 %183)
  br label %185

185:                                              ; preds = %168, %110
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %6, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %6, align 4
  br label %24

189:                                              ; preds = %24
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %189, %108, %20
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local %struct.TYPE_13__* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @mlxcpld_led_brightness_set(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @devm_led_classdev_register(%struct.device*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
