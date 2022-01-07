; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asc7621.c_store_pwm_ac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asc7621.c_store_pwm_ac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i64* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@store_pwm_ac.map = internal constant [32 x i32] [i32 4, i32 0, i32 1, i32 255, i32 2, i32 255, i32 5, i32 6, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 15, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 3], align 16
@EINVAL = common dso_local global i64 0, align 8
@param = common dso_local global %struct.TYPE_3__* null, align 8
@data = common dso_local global %struct.TYPE_4__* null, align 8
@client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_ac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_ac(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call i32 @SETUP_STORE_DATA_PARAM(%struct.device* %15, %struct.device_attribute* %16)
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @kstrtoul(i8* %18, i32 10, i64* %10)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %138

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  %26 = icmp ugt i64 %25, 31
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %138

30:                                               ; preds = %24
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds [32 x i32], [32 x i32]* @store_pwm_ac.map, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %35, 255
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %5, align 8
  br label %138

40:                                               ; preds = %30
  %41 = load i64, i64* %10, align 8
  %42 = and i64 %41, 7
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load i64, i64* %10, align 8
  %45 = lshr i64 %44, 3
  %46 = and i64 %45, 1
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %48, %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %54, %59
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %61, %66
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %67, %72
  store i32 %73, i32* %13, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load i32, i32* @client, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @read_byte(i32 %77, i64 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %90, %95
  %97 = xor i32 %96, -1
  %98 = and i32 %85, %97
  %99 = or i32 %84, %98
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %106, %111
  %113 = xor i32 %112, -1
  %114 = and i32 %101, %113
  %115 = or i32 %100, %114
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32, i32* %119, i64 %124
  store i32 %116, i32* %125, align 4
  %126 = load i32, i32* @client, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 0
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @write_byte(i32 %126, i64 %131, i32 %132)
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i64, i64* %9, align 8
  store i64 %137, i64* %5, align 8
  br label %138

138:                                              ; preds = %40, %37, %27, %21
  %139 = load i64, i64* %5, align 8
  ret i64 %139
}

declare dso_local i32 @SETUP_STORE_DATA_PARAM(%struct.device*, %struct.device_attribute*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @read_byte(i32, i64) #1

declare dso_local i32 @write_byte(i32, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
