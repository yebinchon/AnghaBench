; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asc7621.c_store_pwm_ast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asc7621.c_store_pwm_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i64* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@asc7621_pwm_auto_spinup_map = common dso_local global i64* null, align 8
@param = common dso_local global %struct.TYPE_3__* null, align 8
@data = common dso_local global %struct.TYPE_4__* null, align 8
@client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_ast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_ast(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call i32 @SETUP_STORE_DATA_PARAM(%struct.device* %14, %struct.device_attribute* %15)
  store i32 255, i32* %12, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @kstrtol(i8* %17, i32 10, i64* %10)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %111

23:                                               ; preds = %4
  store i64 0, i64* %13, align 8
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i64, i64* %13, align 8
  %26 = load i64*, i64** @asc7621_pwm_auto_spinup_map, align 8
  %27 = call i64 @ARRAY_SIZE(i64* %26)
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load i64, i64* %10, align 8
  %31 = load i64*, i64** @asc7621_pwm_auto_spinup_map, align 8
  %32 = load i64, i64* %13, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %30, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i64, i64* %13, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %12, align 4
  br label %43

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %13, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %13, align 8
  br label %24

43:                                               ; preds = %36, %24
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, 255
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i64, i64* @EINVAL, align 8
  %48 = sub i64 0, %47
  store i64 %48, i64* %5, align 8
  br label %111

49:                                               ; preds = %43
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %50, %55
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %56, %61
  store i32 %62, i32* %12, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load i32, i32* @client, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @read_byte(i32 %66, i64 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %78, %83
  %85 = xor i32 %84, -1
  %86 = and i32 %73, %85
  %87 = load i32, i32* %12, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32, i32* %92, i64 %97
  store i32 %89, i32* %98, align 4
  %99 = load i32, i32* @client, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @write_byte(i32 %99, i64 %104, i32 %105)
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i64, i64* %9, align 8
  store i64 %110, i64* %5, align 8
  br label %111

111:                                              ; preds = %49, %46, %20
  %112 = load i64, i64* %5, align 8
  ret i64 %112
}

declare dso_local i32 @SETUP_STORE_DATA_PARAM(%struct.device*, %struct.device_attribute*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

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
