; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-common.c_gic_enable_of_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-common.c_gic_enable_of_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.gic_quirk = type { i64, i64 (i8*)*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"GIC: enabling workaround for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gic_enable_of_quirks(%struct.device_node* %0, %struct.gic_quirk* %1, i8* %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.gic_quirk*, align 8
  %6 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.gic_quirk* %1, %struct.gic_quirk** %5, align 8
  store i8* %2, i8** %6, align 8
  br label %7

7:                                                ; preds = %33, %3
  %8 = load %struct.gic_quirk*, %struct.gic_quirk** %5, align 8
  %9 = getelementptr inbounds %struct.gic_quirk, %struct.gic_quirk* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %7
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = load %struct.gic_quirk*, %struct.gic_quirk** %5, align 8
  %15 = getelementptr inbounds %struct.gic_quirk, %struct.gic_quirk* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @of_device_is_compatible(%struct.device_node* %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %33

20:                                               ; preds = %12
  %21 = load %struct.gic_quirk*, %struct.gic_quirk** %5, align 8
  %22 = getelementptr inbounds %struct.gic_quirk, %struct.gic_quirk* %21, i32 0, i32 1
  %23 = load i64 (i8*)*, i64 (i8*)** %22, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 %23(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.gic_quirk*, %struct.gic_quirk** %5, align 8
  %29 = getelementptr inbounds %struct.gic_quirk, %struct.gic_quirk* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %27, %20
  br label %33

33:                                               ; preds = %32, %19
  %34 = load %struct.gic_quirk*, %struct.gic_quirk** %5, align 8
  %35 = getelementptr inbounds %struct.gic_quirk, %struct.gic_quirk* %34, i32 1
  store %struct.gic_quirk* %35, %struct.gic_quirk** %5, align 8
  br label %7

36:                                               ; preds = %7
  ret void
}

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i32) #1

declare dso_local i32 @pr_info(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
