; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_host1x_job_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_host1x_job_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_job = type { i32, %struct.host1x_job_gather*, i32* }
%struct.host1x_job_gather = type { i32, i64, i32 }
%struct.device = type { i32 }
%struct.host1x = type { i32 }

@CONFIG_TEGRA_HOST1X_FIREWALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host1x_job_pin(%struct.host1x_job* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.host1x_job*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.host1x*, align 8
  %9 = alloca %struct.host1x_job_gather*, align 8
  store %struct.host1x_job* %0, %struct.host1x_job** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.host1x* @dev_get_drvdata(i32 %12)
  store %struct.host1x* %13, %struct.host1x** %8, align 8
  %14 = load %struct.host1x*, %struct.host1x** %8, align 8
  %15 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %16 = call i32 @pin_job(%struct.host1x* %14, %struct.host1x_job* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %121

20:                                               ; preds = %2
  %21 = load i32, i32* @CONFIG_TEGRA_HOST1X_FIREWALL, align 4
  %22 = call i64 @IS_ENABLED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @copy_gathers(%struct.host1x_job* %25, %struct.device* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %121

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %20
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %117, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %36 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %120

39:                                               ; preds = %33
  %40 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %41 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %40, i32 0, i32 1
  %42 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %42, i64 %44
  store %struct.host1x_job_gather* %45, %struct.host1x_job_gather** %9, align 8
  %46 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %9, align 8
  %47 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %117

51:                                               ; preds = %39
  %52 = load i32, i32* @CONFIG_TEGRA_HOST1X_FIREWALL, align 4
  %53 = call i64 @IS_ENABLED(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  %56 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %57 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %9, align 8
  %64 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %55, %51
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %106, %65
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %71 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %109

74:                                               ; preds = %68
  %75 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %76 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %75, i32 0, i32 1
  %77 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %77, i64 %79
  %81 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %9, align 8
  %84 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %74
  %88 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %89 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %88, i32 0, i32 1
  %90 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %90, i64 %92
  %94 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %9, align 8
  %96 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %99 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %98, i32 0, i32 1
  %100 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %100, i64 %102
  %104 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %103, i32 0, i32 2
  store i32 %97, i32* %104, align 8
  br label %105

105:                                              ; preds = %87, %74
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %7, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %68

109:                                              ; preds = %68
  %110 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %111 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %9, align 8
  %112 = call i32 @do_relocs(%struct.host1x_job* %110, %struct.host1x_job_gather* %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %120

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %50
  %118 = load i32, i32* %6, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %33

120:                                              ; preds = %115, %33
  br label %121

121:                                              ; preds = %120, %30, %19
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %126 = call i32 @host1x_job_unpin(%struct.host1x_job* %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = call i32 (...) @wmb()
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local %struct.host1x* @dev_get_drvdata(i32) #1

declare dso_local i32 @pin_job(%struct.host1x*, %struct.host1x_job*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @copy_gathers(%struct.host1x_job*, %struct.device*) #1

declare dso_local i32 @do_relocs(%struct.host1x_job*, %struct.host1x_job_gather*) #1

declare dso_local i32 @host1x_job_unpin(%struct.host1x_job*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
