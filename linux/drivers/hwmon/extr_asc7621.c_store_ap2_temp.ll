; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asc7621.c_store_ap2_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asc7621.c_store_ap2_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i64*, i32*, i32* }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@data = common dso_local global %struct.TYPE_4__* null, align 8
@param = common dso_local global %struct.TYPE_3__* null, align 8
@asc7621_range_map = common dso_local global i64* null, align 8
@client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_ap2_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_ap2_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
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
  store i32 0, i32* %14, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @kstrtol(i8* %18, i32 10, i64* %10)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %127

24:                                               ; preds = %4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 1000
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = add nsw i64 %41, 2000
  %43 = load i64, i64* %11, align 8
  %44 = add nsw i64 %43, 80000
  %45 = call i64 @clamp_val(i64 %40, i64 %42, i64 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i64*, i64** @asc7621_range_map, align 8
  %47 = call i32 @ARRAY_SIZE(i64* %46)
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %65, %24
  %50 = load i32, i32* %12, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64*, i64** @asc7621_range_map, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %54, %59
  %61 = icmp sge i64 %53, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %14, align 4
  br label %68

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %12, align 4
  br label %49

68:                                               ; preds = %62, %49
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %69, %74
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %75, %80
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* @client, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @read_byte(i32 %82, i64 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %94, %99
  %101 = xor i32 %100, -1
  %102 = and i32 %89, %101
  %103 = load i32, i32* %14, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i32, i32* %108, i64 %113
  store i32 %105, i32* %114, align 4
  %115 = load i32, i32* @client, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @write_byte(i32 %115, i64 %120, i32 %121)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load i64, i64* %9, align 8
  store i64 %126, i64* %5, align 8
  br label %127

127:                                              ; preds = %68, %21
  %128 = load i64, i64* %5, align 8
  ret i64 %128
}

declare dso_local i32 @SETUP_STORE_DATA_PARAM(%struct.device*, %struct.device_attribute*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @clamp_val(i64, i64, i64) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @read_byte(i32, i64) #1

declare dso_local i32 @write_byte(i32, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
