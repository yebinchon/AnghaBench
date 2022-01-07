; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_matches_pnp_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_matches_pnp_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.serio* }
%struct.serio = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"PNP: \00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psmouse_matches_pnp_id(%struct.psmouse* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.serio*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i8** %1, i8*** %5, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.serio*, %struct.serio** %13, align 8
  store %struct.serio* %14, %struct.serio** %6, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.serio*, %struct.serio** %6, align 8
  %16 = getelementptr inbounds %struct.serio, %struct.serio* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @strncmp(i32* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

21:                                               ; preds = %2
  %22 = load %struct.serio*, %struct.serio** %6, align 8
  %23 = getelementptr inbounds %struct.serio, %struct.serio* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 5
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kstrndup(i32* %25, i32 3, i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %47

31:                                               ; preds = %21
  %32 = load i8*, i8** %8, align 8
  store i8* %32, i8** %9, align 8
  br label %33

33:                                               ; preds = %42, %31
  %34 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %34, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = call i64 @psmouse_check_pnp_id(i8* %37, i8** %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %10, align 4
  br label %43

42:                                               ; preds = %36
  br label %33

43:                                               ; preds = %41, %33
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @kfree(i8* %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %30, %20
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i8* @kstrndup(i32*, i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @psmouse_check_pnp_id(i8*, i8**) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
