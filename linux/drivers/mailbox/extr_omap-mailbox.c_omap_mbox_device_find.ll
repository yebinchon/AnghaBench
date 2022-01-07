; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c_omap_mbox_device_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c_omap_mbox_device_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox = type { i32 }
%struct.omap_mbox_device = type { %struct.omap_mbox** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.omap_mbox* (%struct.omap_mbox_device*, i8*)* @omap_mbox_device_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.omap_mbox* @omap_mbox_device_find(%struct.omap_mbox_device* %0, i8* %1) #0 {
  %3 = alloca %struct.omap_mbox*, align 8
  %4 = alloca %struct.omap_mbox_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.omap_mbox*, align 8
  %7 = alloca %struct.omap_mbox*, align 8
  %8 = alloca %struct.omap_mbox**, align 8
  %9 = alloca i32, align 4
  store %struct.omap_mbox_device* %0, %struct.omap_mbox_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.omap_mbox* null, %struct.omap_mbox** %7, align 8
  %10 = load %struct.omap_mbox_device*, %struct.omap_mbox_device** %4, align 8
  %11 = getelementptr inbounds %struct.omap_mbox_device, %struct.omap_mbox_device* %10, i32 0, i32 0
  %12 = load %struct.omap_mbox**, %struct.omap_mbox*** %11, align 8
  store %struct.omap_mbox** %12, %struct.omap_mbox*** %8, align 8
  %13 = load %struct.omap_mbox**, %struct.omap_mbox*** %8, align 8
  %14 = icmp ne %struct.omap_mbox** %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.omap_mbox* null, %struct.omap_mbox** %3, align 8
  br label %39

16:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %34, %16
  %18 = load %struct.omap_mbox**, %struct.omap_mbox*** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.omap_mbox*, %struct.omap_mbox** %18, i64 %20
  %22 = load %struct.omap_mbox*, %struct.omap_mbox** %21, align 8
  store %struct.omap_mbox* %22, %struct.omap_mbox** %6, align 8
  %23 = icmp ne %struct.omap_mbox* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load %struct.omap_mbox*, %struct.omap_mbox** %6, align 8
  %26 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strcmp(i32 %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load %struct.omap_mbox*, %struct.omap_mbox** %6, align 8
  store %struct.omap_mbox* %32, %struct.omap_mbox** %7, align 8
  br label %37

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %17

37:                                               ; preds = %31, %17
  %38 = load %struct.omap_mbox*, %struct.omap_mbox** %7, align 8
  store %struct.omap_mbox* %38, %struct.omap_mbox** %3, align 8
  br label %39

39:                                               ; preds = %37, %15
  %40 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  ret %struct.omap_mbox* %40
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
