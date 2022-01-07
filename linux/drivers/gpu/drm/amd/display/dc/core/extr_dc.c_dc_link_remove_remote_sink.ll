; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_link_remove_remote_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_link_remove_remote_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32, %struct.dc_sink** }
%struct.dc_sink = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dc_link_remove_remote_sink(%struct.dc_link* %0, %struct.dc_sink* %1) #0 {
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca %struct.dc_sink*, align 8
  %5 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  store %struct.dc_sink* %1, %struct.dc_sink** %4, align 8
  %6 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %7 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %77

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %74, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %16 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %77

19:                                               ; preds = %13
  %20 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %21 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %20, i32 0, i32 1
  %22 = load %struct.dc_sink**, %struct.dc_sink*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.dc_sink*, %struct.dc_sink** %22, i64 %24
  %26 = load %struct.dc_sink*, %struct.dc_sink** %25, align 8
  %27 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %28 = icmp eq %struct.dc_sink* %26, %27
  br i1 %28, label %29, label %73

29:                                               ; preds = %19
  %30 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %31 = call i32 @dc_sink_release(%struct.dc_sink* %30)
  %32 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %33 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %32, i32 0, i32 1
  %34 = load %struct.dc_sink**, %struct.dc_sink*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.dc_sink*, %struct.dc_sink** %34, i64 %36
  store %struct.dc_sink* null, %struct.dc_sink** %37, align 8
  br label %38

38:                                               ; preds = %45, %29
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %41 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %47 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %46, i32 0, i32 1
  %48 = load %struct.dc_sink**, %struct.dc_sink*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dc_sink*, %struct.dc_sink** %48, i64 %51
  %53 = load %struct.dc_sink*, %struct.dc_sink** %52, align 8
  %54 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %55 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %54, i32 0, i32 1
  %56 = load %struct.dc_sink**, %struct.dc_sink*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.dc_sink*, %struct.dc_sink** %56, i64 %58
  store %struct.dc_sink* %53, %struct.dc_sink** %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %38

62:                                               ; preds = %38
  %63 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %64 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %63, i32 0, i32 1
  %65 = load %struct.dc_sink**, %struct.dc_sink*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.dc_sink*, %struct.dc_sink** %65, i64 %67
  store %struct.dc_sink* null, %struct.dc_sink** %68, align 8
  %69 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %70 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 8
  br label %77

73:                                               ; preds = %19
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %13

77:                                               ; preds = %10, %62, %13
  ret void
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @dc_sink_release(%struct.dc_sink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
