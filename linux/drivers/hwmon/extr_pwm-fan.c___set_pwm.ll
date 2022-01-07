; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pwm-fan.c___set_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pwm-fan.c___set_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_fan_ctx = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.pwm_state = type { i32, i32 }

@MAX_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_fan_ctx*, i64)* @__set_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_pwm(%struct.pwm_fan_ctx* %0, i64 %1) #0 {
  %3 = alloca %struct.pwm_fan_ctx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pwm_state, align 4
  store %struct.pwm_fan_ctx* %0, %struct.pwm_fan_ctx** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %8 = bitcast %struct.pwm_state* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = call i32 @pwm_init_state(%struct.TYPE_5__* %21, %struct.pwm_state* %7)
  %23 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = sub i64 %30, 1
  %32 = mul i64 %29, %31
  %33 = load i32, i32* @MAX_PWM, align 4
  %34 = call i32 @DIV_ROUND_UP(i64 %32, i32 %33)
  %35 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %7, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %7, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = call i32 @pwm_apply_state(%struct.TYPE_5__* %43, %struct.pwm_state* %7)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %18
  %48 = load i64, i64* %4, align 8
  %49 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %18
  br label %52

52:                                               ; preds = %51, %17
  %53 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @pwm_init_state(%struct.TYPE_5__*, %struct.pwm_state*) #2

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #2

declare dso_local i32 @pwm_apply_state(%struct.TYPE_5__*, %struct.pwm_state*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
