; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_dm355evm_keys.c_dm355evm_keys_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_dm355evm_keys.c_dm355evm_keys_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm355evm_keys = type { i32, i32 }
%struct.key_entry = type { i32 }

@dm355evm_keys_irq.last_event = internal global i32 0, align 4
@DM355EVM_MSP_INPUT_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"input high err %d\0A\00", align 1
@DM355EVM_MSP_INPUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"input low err %d\0A\00", align 1
@KEY_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"input event 0x%04x--> keycode %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dm355evm_keys_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm355evm_keys_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dm355evm_keys*, align 8
  %6 = alloca %struct.key_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.dm355evm_keys*
  store %struct.dm355evm_keys* %11, %struct.dm355evm_keys** %5, align 8
  br label %12

12:                                               ; preds = %65, %47, %2
  %13 = load i32, i32* @DM355EVM_MSP_INPUT_HIGH, align 4
  %14 = call i32 @dm355evm_msp_read(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %5, align 8
  %19 = getelementptr inbounds %struct.dm355evm_keys, %struct.dm355evm_keys* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %91

23:                                               ; preds = %12
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 %24, 8
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @DM355EVM_MSP_INPUT_LOW, align 4
  %27 = call i32 @dm355evm_msp_read(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %5, align 8
  %32 = getelementptr inbounds %struct.dm355evm_keys, %struct.dm355evm_keys* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %91

36:                                               ; preds = %23
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 57005
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %91

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @dm355evm_keys_irq.last_event, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* @dm355evm_keys_irq.last_event, align 4
  br label %12

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* @dm355evm_keys_irq.last_event, align 4
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, -2049
  store i32 %51, i32* %9, align 4
  %52 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %5, align 8
  %53 = getelementptr inbounds %struct.dm355evm_keys, %struct.dm355evm_keys* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call %struct.key_entry* @sparse_keymap_entry_from_scancode(i32 %54, i32 %55)
  store %struct.key_entry* %56, %struct.key_entry** %6, align 8
  %57 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %58 = icmp ne %struct.key_entry* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %61 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  br label %65

63:                                               ; preds = %48
  %64 = load i32, i32* @KEY_UNKNOWN, align 4
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi i32 [ %62, %59 ], [ %64, %63 ]
  store i32 %66, i32* %7, align 4
  %67 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %5, align 8
  %68 = getelementptr inbounds %struct.dm355evm_keys, %struct.dm355evm_keys* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %5, align 8
  %74 = getelementptr inbounds %struct.dm355evm_keys, %struct.dm355evm_keys* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @input_report_key(i32 %75, i32 %76, i32 1)
  %78 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %5, align 8
  %79 = getelementptr inbounds %struct.dm355evm_keys, %struct.dm355evm_keys* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @input_sync(i32 %80)
  %82 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %5, align 8
  %83 = getelementptr inbounds %struct.dm355evm_keys, %struct.dm355evm_keys* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @input_report_key(i32 %84, i32 %85, i32 0)
  %87 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %5, align 8
  %88 = getelementptr inbounds %struct.dm355evm_keys, %struct.dm355evm_keys* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @input_sync(i32 %89)
  br label %12

91:                                               ; preds = %42, %30, %17
  %92 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %92
}

declare dso_local i32 @dm355evm_msp_read(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local %struct.key_entry* @sparse_keymap_entry_from_scancode(i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
