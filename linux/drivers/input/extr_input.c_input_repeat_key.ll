; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_repeat_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_repeat_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_value = type { i32, i32, i32 }
%struct.input_dev = type { i32, i64*, i32, i32, i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@KEY_MAX = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@input_value_sync = common dso_local global %struct.input_value zeroinitializer, align 4
@REP_PERIOD = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@dev = common dso_local global %struct.input_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @input_repeat_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_repeat_key(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [2 x %struct.input_value], align 16
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %7 = ptrtoint %struct.input_dev* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.input_dev* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.input_dev* %10, %struct.input_dev** %3, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %12 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %19 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @test_bit(i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %70

23:                                               ; preds = %1
  %24 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %25 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %28 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @KEY_MAX, align 4
  %31 = call i64 @is_event_supported(i32 %26, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %23
  %34 = getelementptr inbounds [2 x %struct.input_value], [2 x %struct.input_value]* %5, i64 0, i64 0
  %35 = getelementptr inbounds %struct.input_value, %struct.input_value* %34, i32 0, i32 0
  %36 = load i32, i32* @EV_KEY, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.input_value, %struct.input_value* %34, i32 0, i32 1
  %38 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %37, align 4
  %41 = getelementptr inbounds %struct.input_value, %struct.input_value* %34, i32 0, i32 2
  store i32 2, i32* %41, align 4
  %42 = getelementptr inbounds %struct.input_value, %struct.input_value* %34, i64 1
  %43 = bitcast %struct.input_value* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 bitcast (%struct.input_value* @input_value_sync to i8*), i64 12, i1 false)
  %44 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %45 = getelementptr inbounds [2 x %struct.input_value], [2 x %struct.input_value]* %5, i64 0, i64 0
  %46 = getelementptr inbounds [2 x %struct.input_value], [2 x %struct.input_value]* %5, i64 0, i64 0
  %47 = call i32 @ARRAY_SIZE(%struct.input_value* %46)
  %48 = call i32 @input_pass_values(%struct.input_dev* %44, %struct.input_value* %45, i32 %47)
  %49 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @REP_PERIOD, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %33
  %57 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %58 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %57, i32 0, i32 2
  %59 = load i64, i64* @jiffies, align 8
  %60 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %61 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* @REP_PERIOD, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @msecs_to_jiffies(i64 %65)
  %67 = add nsw i64 %59, %66
  %68 = call i32 @mod_timer(i32* %58, i64 %67)
  br label %69

69:                                               ; preds = %56, %33
  br label %70

70:                                               ; preds = %69, %23, %1
  %71 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %72 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %71, i32 0, i32 0
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  ret void
}

declare dso_local %struct.input_dev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @is_event_supported(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @input_pass_values(%struct.input_dev*, %struct.input_value*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.input_value*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
