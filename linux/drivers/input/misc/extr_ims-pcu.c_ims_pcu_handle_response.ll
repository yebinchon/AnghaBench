; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_handle_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_handle_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32*, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ims_pcu*)* @ims_pcu_handle_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ims_pcu_handle_response(%struct.ims_pcu* %0) #0 {
  %2 = alloca %struct.ims_pcu*, align 8
  store %struct.ims_pcu* %0, %struct.ims_pcu** %2, align 8
  %3 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %4 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %18 [
    i32 128, label %8
  ]

8:                                                ; preds = %1
  %9 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %10 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @likely(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %16 = call i32 @ims_pcu_report_events(%struct.ims_pcu* %15)
  br label %17

17:                                               ; preds = %14, %8
  br label %59

18:                                               ; preds = %1
  %19 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %20 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %25 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %18
  %29 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %30 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %35 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %28
  %40 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %41 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %44 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %47 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @memcpy(i32 %42, i32* %45, i32 %48)
  %50 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %51 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %54 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %56 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %55, i32 0, i32 2
  %57 = call i32 @complete(i32* %56)
  br label %58

58:                                               ; preds = %39, %28, %18
  br label %59

59:                                               ; preds = %58, %17
  ret void
}

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @ims_pcu_report_events(%struct.ims_pcu*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
