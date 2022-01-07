; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_set_keycode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_set_keycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_value = type { i32, i32, i32 }
%struct.input_dev = type { i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32, i32, i32, i32 }
%struct.input_keymap_entry = type { i64 }

@KEY_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@input_value_sync = common dso_local global %struct.input_value zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_set_keycode(%struct.input_dev* %0, %struct.input_keymap_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.input_keymap_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.input_value], align 16
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.input_keymap_entry* %1, %struct.input_keymap_entry** %5, align 8
  %10 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %11 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @KEY_MAX, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %80

18:                                               ; preds = %2
  %19 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 1
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 0
  %25 = load i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)** %24, align 8
  %26 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %27 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %28 = call i32 %25(%struct.input_dev* %26, %struct.input_keymap_entry* %27, i32* %7)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %74

32:                                               ; preds = %18
  %33 = load i32, i32* @KEY_RESERVED, align 4
  %34 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @__clear_bit(i32 %33, i32 %36)
  %38 = load i32, i32* @EV_KEY, align 4
  %39 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @test_bit(i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %32
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* @KEY_MAX, align 8
  %50 = call i32 @is_event_supported(i32 %45, i32 %48, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %55 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @__test_and_clear_bit(i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %52
  %60 = getelementptr inbounds [2 x %struct.input_value], [2 x %struct.input_value]* %9, i64 0, i64 0
  %61 = getelementptr inbounds %struct.input_value, %struct.input_value* %60, i32 0, i32 0
  %62 = load i32, i32* @EV_KEY, align 4
  store i32 %62, i32* %61, align 4
  %63 = getelementptr inbounds %struct.input_value, %struct.input_value* %60, i32 0, i32 1
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %63, align 4
  %65 = getelementptr inbounds %struct.input_value, %struct.input_value* %60, i32 0, i32 2
  store i32 0, i32* %65, align 4
  %66 = getelementptr inbounds %struct.input_value, %struct.input_value* %60, i64 1
  %67 = bitcast %struct.input_value* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 bitcast (%struct.input_value* @input_value_sync to i8*), i64 12, i1 false)
  %68 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %69 = getelementptr inbounds [2 x %struct.input_value], [2 x %struct.input_value]* %9, i64 0, i64 0
  %70 = getelementptr inbounds [2 x %struct.input_value], [2 x %struct.input_value]* %9, i64 0, i64 0
  %71 = call i32 @ARRAY_SIZE(%struct.input_value* %70)
  %72 = call i32 @input_pass_values(%struct.input_dev* %68, %struct.input_value* %69, i32 %71)
  br label %73

73:                                               ; preds = %59, %52, %44, %32
  br label %74

74:                                               ; preds = %73, %31
  %75 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %76 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %75, i32 0, i32 1
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %74, %15
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @is_event_supported(i32, i32, i64) #1

declare dso_local i64 @__test_and_clear_bit(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @input_pass_values(%struct.input_dev*, %struct.input_value*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.input_value*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
