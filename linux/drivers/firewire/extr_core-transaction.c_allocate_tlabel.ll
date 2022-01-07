; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_allocate_tlabel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_allocate_tlabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*)* @allocate_tlabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_tlabel(%struct.fw_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_card*, align 8
  %4 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %3, align 8
  %5 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %6 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %10 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = shl i64 1, %13
  %15 = and i64 %11, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %8
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  %20 = and i32 %19, 63
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %23 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %44

29:                                               ; preds = %17
  br label %8

30:                                               ; preds = %8
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  %33 = and i32 %32, 63
  %34 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %35 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = shl i64 1, %37
  %39 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %40 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = or i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %30, %26
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
