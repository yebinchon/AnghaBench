; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-card.c_fw_core_add_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-card.c_fw_core_add_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_descriptor = type { i64, i32*, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@card_mutex = common dso_local global i32 0, align 4
@config_rom_length = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@descriptor_list = common dso_local global i32 0, align 4
@descriptor_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_core_add_descriptor(%struct.fw_descriptor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_descriptor*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.fw_descriptor* %0, %struct.fw_descriptor** %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %12, %1
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.fw_descriptor*, %struct.fw_descriptor** %3, align 8
  %9 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = load %struct.fw_descriptor*, %struct.fw_descriptor** %3, align 8
  %14 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 16
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %4, align 8
  br label %6

24:                                               ; preds = %6
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.fw_descriptor*, %struct.fw_descriptor** %3, align 8
  %27 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %65

33:                                               ; preds = %24
  %34 = call i32 @mutex_lock(i32* @card_mutex)
  %35 = load i32, i32* @config_rom_length, align 4
  %36 = load %struct.fw_descriptor*, %struct.fw_descriptor** %3, align 8
  %37 = call i32 @required_space(%struct.fw_descriptor* %36)
  %38 = add nsw i32 %35, %37
  %39 = icmp sgt i32 %38, 256
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %62

43:                                               ; preds = %33
  %44 = load %struct.fw_descriptor*, %struct.fw_descriptor** %3, align 8
  %45 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %44, i32 0, i32 3
  %46 = call i32 @list_add_tail(i32* %45, i32* @descriptor_list)
  %47 = load %struct.fw_descriptor*, %struct.fw_descriptor** %3, align 8
  %48 = call i32 @required_space(%struct.fw_descriptor* %47)
  %49 = load i32, i32* @config_rom_length, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* @config_rom_length, align 4
  %51 = load i32, i32* @descriptor_count, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @descriptor_count, align 4
  %53 = load %struct.fw_descriptor*, %struct.fw_descriptor** %3, align 8
  %54 = getelementptr inbounds %struct.fw_descriptor, %struct.fw_descriptor* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load i32, i32* @descriptor_count, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @descriptor_count, align 4
  br label %60

60:                                               ; preds = %57, %43
  %61 = call i32 (...) @update_config_roms()
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %40
  %63 = call i32 @mutex_unlock(i32* @card_mutex)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %30
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @required_space(%struct.fw_descriptor*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @update_config_roms(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
