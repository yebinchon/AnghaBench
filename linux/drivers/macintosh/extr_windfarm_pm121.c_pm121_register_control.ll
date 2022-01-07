; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm121.c_pm121_register_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm121.c_pm121_register_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_control = type { i32 }

@controls = common dso_local global %struct.wf_control** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wf_control* (%struct.wf_control*, i8*, i32)* @pm121_register_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wf_control* @pm121_register_control(%struct.wf_control* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.wf_control*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.wf_control* %0, %struct.wf_control** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.wf_control**, %struct.wf_control*** @controls, align 8
  %8 = load i32, i32* %6, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %7, i64 %9
  %11 = load %struct.wf_control*, %struct.wf_control** %10, align 8
  %12 = icmp eq %struct.wf_control* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %3
  %14 = load %struct.wf_control*, %struct.wf_control** %4, align 8
  %15 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strcmp(i32 %16, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %13
  %21 = load %struct.wf_control*, %struct.wf_control** %4, align 8
  %22 = call i64 @wf_get_control(%struct.wf_control* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.wf_control*, %struct.wf_control** %4, align 8
  %26 = load %struct.wf_control**, %struct.wf_control*** @controls, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %26, i64 %28
  store %struct.wf_control* %25, %struct.wf_control** %29, align 8
  br label %30

30:                                               ; preds = %24, %20
  br label %31

31:                                               ; preds = %30, %13, %3
  %32 = load %struct.wf_control**, %struct.wf_control*** @controls, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %32, i64 %34
  %36 = load %struct.wf_control*, %struct.wf_control** %35, align 8
  ret %struct.wf_control* %36
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @wf_get_control(%struct.wf_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
