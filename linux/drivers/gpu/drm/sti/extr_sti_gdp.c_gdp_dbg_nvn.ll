; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_gdp.c_gdp_dbg_nvn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_gdp.c_gdp_dbg_nvn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.sti_gdp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i8*, i8* }

@GDP_NODE_NB_BANK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"\09Virt @: %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.sti_gdp*, i32)* @gdp_dbg_nvn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdp_dbg_nvn(%struct.seq_file* %0, %struct.sti_gdp* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.sti_gdp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.sti_gdp* %1, %struct.sti_gdp** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %54, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @GDP_NODE_NB_BANK, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %9
  %14 = load %struct.sti_gdp*, %struct.sti_gdp** %5, align 8
  %15 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %13
  %25 = load %struct.sti_gdp*, %struct.sti_gdp** %5, align 8
  %26 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %7, align 8
  br label %57

33:                                               ; preds = %13
  %34 = load %struct.sti_gdp*, %struct.sti_gdp** %5, align 8
  %35 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %33
  %45 = load %struct.sti_gdp*, %struct.sti_gdp** %5, align 8
  %46 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %7, align 8
  br label %57

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %9

57:                                               ; preds = %44, %24, %9
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %60, %57
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
