; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_logips2pp.c_ps2pp_attr_set_smartscroll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_logips2pp.c_ps2pp_attr_set_smartscroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i8*, i8*, i64)* @ps2pp_attr_set_smartscroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2pp_attr_set_smartscroll(%struct.psmouse* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @kstrtouint(i8* %12, i32 10, i32* %10)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %5, align 4
  br label %33

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %33

24:                                               ; preds = %18
  %25 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @ps2pp_set_smartscroll(%struct.psmouse* %25, i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %30 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* %9, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %24, %21, %16
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @ps2pp_set_smartscroll(%struct.psmouse*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
