; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asc7621.c_store_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asc7621.c_store_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32*, i32*, i64* }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@data = common dso_local global %struct.TYPE_4__* null, align 8
@param = common dso_local global %struct.TYPE_3__* null, align 8
@client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call i32 @SETUP_STORE_DATA_PARAM(%struct.device* %16, %struct.device_attribute* %17)
  store i32 255, i32* %15, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @kstrtol(i8* %19, i32 10, i64* %10)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %5, align 8
  br label %189

25:                                               ; preds = %4
  %26 = load i64, i64* %10, align 8
  switch i64 %26, label %32 [
    i64 0, label %27
    i64 1, label %28
    i64 2, label %29
    i64 3, label %30
    i64 255, label %31
  ]

27:                                               ; preds = %25
  store i32 4, i32* %14, align 4
  br label %35

28:                                               ; preds = %25
  store i32 7, i32* %14, align 4
  br label %35

29:                                               ; preds = %25
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %35

30:                                               ; preds = %25
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %35

31:                                               ; preds = %25
  store i32 3, i32* %14, align 4
  br label %35

32:                                               ; preds = %25
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %189

35:                                               ; preds = %31, %30, %29, %28, %27
  %36 = load i32, i32* %14, align 4
  %37 = and i32 %36, 7
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %14, align 4
  %39 = ashr i32 %38, 3
  %40 = and i32 %39, 1
  store i32 %40, i32* %13, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %44, %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %50, %55
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %57, %62
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %63, %68
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* @client, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @read_byte(i32 %70, i64 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %83, %88
  %90 = xor i32 %89, -1
  %91 = and i32 %78, %90
  %92 = or i32 %77, %91
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %99, %104
  %106 = xor i32 %105, -1
  %107 = and i32 %94, %106
  %108 = or i32 %93, %107
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32, i32* %112, i64 %117
  store i32 %109, i32* %118, align 4
  %119 = load i32, i32* @client, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @write_byte(i32 %119, i64 %124, i32 %125)
  %127 = load i32, i32* %15, align 4
  %128 = icmp slt i32 %127, 255
  br i1 %128, label %129, label %184

129:                                              ; preds = %35
  %130 = load i32, i32* %15, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %130, %135
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 2
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %136, %141
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* @client, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 2
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @read_byte(i32 %143, i64 %148)
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %156, %161
  %163 = xor i32 %162, -1
  %164 = and i32 %151, %163
  %165 = or i32 %150, %164
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 2
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 2
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i32, i32* %169, i64 %174
  store i32 %166, i32* %175, align 4
  %176 = load i32, i32* @client, align 4
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** @param, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 2
  %179 = load i64*, i64** %178, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 2
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @write_byte(i32 %176, i64 %181, i32 %182)
  br label %184

184:                                              ; preds = %129, %35
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = call i32 @mutex_unlock(i32* %186)
  %188 = load i64, i64* %9, align 8
  store i64 %188, i64* %5, align 8
  br label %189

189:                                              ; preds = %184, %32, %22
  %190 = load i64, i64* %5, align 8
  ret i64 %190
}

declare dso_local i32 @SETUP_STORE_DATA_PARAM(%struct.device*, %struct.device_attribute*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

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
