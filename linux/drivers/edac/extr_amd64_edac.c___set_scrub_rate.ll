; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c___set_scrub_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c___set_scrub_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.amd64_pvt = type { i32, i32, i32, i32 }

@scrubrates = common dso_local global %struct.TYPE_3__* null, align 8
@F15H_M60H_SCRCTRL = common dso_local global i32 0, align 4
@SCRCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i64, i64)* @__set_scrub_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_scrub_rate(%struct.amd64_pvt* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amd64_pvt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %37, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @scrubrates, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %12)
  %14 = sub nsw i32 %13, 1
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %10
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @scrubrates, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %37

26:                                               ; preds = %16
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @scrubrates, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %40

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %10

40:                                               ; preds = %35, %10
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @scrubrates, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %8, align 8
  %47 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %48 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 23
  br i1 %50, label %56, label %51

51:                                               ; preds = %40
  %52 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %53 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 24
  br i1 %55, label %56, label %60

56:                                               ; preds = %51, %40
  %57 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @__f17h_set_scrubval(%struct.amd64_pvt* %57, i64 %58)
  br label %95

60:                                               ; preds = %51
  %61 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %62 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 21
  br i1 %64, label %65, label %87

65:                                               ; preds = %60
  %66 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %67 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 96
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %72 = call i32 @f15h_select_dct(%struct.amd64_pvt* %71, i32 0)
  %73 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %74 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @F15H_M60H_SCRCTRL, align 4
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @pci_write_bits32(i32 %75, i32 %76, i64 %77, i32 31)
  %79 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %80 = call i32 @f15h_select_dct(%struct.amd64_pvt* %79, i32 1)
  %81 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %82 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @F15H_M60H_SCRCTRL, align 4
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @pci_write_bits32(i32 %83, i32 %84, i64 %85, i32 31)
  br label %94

87:                                               ; preds = %65, %60
  %88 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %89 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SCRCTRL, align 4
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @pci_write_bits32(i32 %90, i32 %91, i64 %92, i32 31)
  br label %94

94:                                               ; preds = %87, %70
  br label %95

95:                                               ; preds = %94, %56
  %96 = load i64, i64* %8, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** @scrubrates, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %4, align 4
  br label %107

106:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %98
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @__f17h_set_scrubval(%struct.amd64_pvt*, i64) #1

declare dso_local i32 @f15h_select_dct(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @pci_write_bits32(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
