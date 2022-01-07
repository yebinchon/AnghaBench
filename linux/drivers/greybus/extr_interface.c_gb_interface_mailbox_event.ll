; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_mailbox_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_mailbox_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_interface = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"mailbox event with UniPro error: 0x%04x\0A\00", align 1
@GB_SVC_INTF_MAILBOX_GREYBUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"mailbox event with unexpected value: 0x%08x\0A\00", align 1
@GB_INTERFACE_QUIRK_LEGACY_MODE_SWITCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"unexpected mailbox event: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"mode switch detected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_interface_mailbox_event(%struct.gb_interface* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gb_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gb_interface* %0, %struct.gb_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %8 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %14 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %13, i32 0, i32 3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dev_warn(i32* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %57

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @GB_SVC_INTF_MAILBOX_GREYBUS, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %23 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %22, i32 0, i32 3
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @dev_warn(i32* %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %57

26:                                               ; preds = %17
  %27 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %28 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GB_INTERFACE_QUIRK_LEGACY_MODE_SWITCH, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %35 = call i32 @gb_interface_legacy_mode_switch(%struct.gb_interface* %34)
  br label %53

36:                                               ; preds = %26
  %37 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %38 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %43 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %42, i32 0, i32 3
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dev_warn(i32* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %57

46:                                               ; preds = %36
  %47 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %48 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %47, i32 0, i32 3
  %49 = call i32 @dev_info(i32* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %51 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %50, i32 0, i32 2
  %52 = call i32 @complete(i32* %51)
  br label %53

53:                                               ; preds = %46, %33
  %54 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %55 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  br label %65

57:                                               ; preds = %41, %21, %12
  %58 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %59 = call i32 @gb_interface_disable(%struct.gb_interface* %58)
  %60 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %61 = call i32 @gb_interface_deactivate(%struct.gb_interface* %60)
  %62 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %63 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  br label %65

65:                                               ; preds = %57, %53
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @gb_interface_legacy_mode_switch(%struct.gb_interface*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gb_interface_disable(%struct.gb_interface*) #1

declare dso_local i32 @gb_interface_deactivate(%struct.gb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
