; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ati_remote2.c_ati_remote2_input_mouse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ati_remote2.c_ati_remote2_input_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ati_remote2 = type { i32**, i32, i32, %struct.TYPE_2__**, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@ATI_REMOTE2_PC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unknown mode byte (%02x %02x %02x %02x)\0A\00", align 1
@EV_REL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ati_remote2*)* @ati_remote2_input_mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ati_remote2_input_mouse(%struct.ati_remote2* %0) #0 {
  %2 = alloca %struct.ati_remote2*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ati_remote2* %0, %struct.ati_remote2** %2, align 8
  %7 = load %struct.ati_remote2*, %struct.ati_remote2** %2, align 8
  %8 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %7, i32 0, i32 4
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %3, align 8
  %10 = load %struct.ati_remote2*, %struct.ati_remote2** %2, align 8
  %11 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %10, i32 0, i32 0
  %12 = load i32**, i32*** %11, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 1, %19
  %21 = load %struct.ati_remote2*, %struct.ati_remote2** %2, align 8
  %22 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %81

27:                                               ; preds = %1
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 15
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ATI_REMOTE2_PC, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %27
  %36 = load %struct.ati_remote2*, %struct.ati_remote2** %2, align 8
  %37 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i32 %50, i32 %53)
  br label %81

55:                                               ; preds = %27
  %56 = load i32, i32* %6, align 4
  %57 = shl i32 1, %56
  %58 = load %struct.ati_remote2*, %struct.ati_remote2** %2, align 8
  %59 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  br label %81

64:                                               ; preds = %55
  %65 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %66 = load i32, i32* @EV_REL, align 4
  %67 = load i32, i32* @REL_X, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @input_event(%struct.input_dev* %65, i32 %66, i32 %67, i32 %70)
  %72 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %73 = load i32, i32* @EV_REL, align 4
  %74 = load i32, i32* @REL_Y, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @input_event(%struct.input_dev* %72, i32 %73, i32 %74, i32 %77)
  %79 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %80 = call i32 @input_sync(%struct.input_dev* %79)
  br label %81

81:                                               ; preds = %64, %63, %35, %26
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
