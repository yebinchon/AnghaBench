; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_userio.c_userio_char_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_userio.c_userio_char_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.userio_device* }
%struct.userio_device = type { %struct.userio_device*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @userio_char_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userio_char_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.userio_device*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.userio_device*, %struct.userio_device** %7, align 8
  store %struct.userio_device* %8, %struct.userio_device** %5, align 8
  %9 = load %struct.userio_device*, %struct.userio_device** %5, align 8
  %10 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.userio_device*, %struct.userio_device** %5, align 8
  %15 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %14, i32 0, i32 0
  %16 = load %struct.userio_device*, %struct.userio_device** %15, align 8
  %17 = call i32 @serio_unregister_port(%struct.userio_device* %16)
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.userio_device*, %struct.userio_device** %5, align 8
  %20 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %19, i32 0, i32 0
  %21 = load %struct.userio_device*, %struct.userio_device** %20, align 8
  %22 = call i32 @kfree(%struct.userio_device* %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.userio_device*, %struct.userio_device** %5, align 8
  %25 = call i32 @kfree(%struct.userio_device* %24)
  ret i32 0
}

declare dso_local i32 @serio_unregister_port(%struct.userio_device*) #1

declare dso_local i32 @kfree(%struct.userio_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
