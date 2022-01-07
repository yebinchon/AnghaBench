; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_setup_ceqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_setup_ceqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.TYPE_6__, %struct.i40iw_ceq*, i32, %struct.i40iw_msix_vector*, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i40iw_ceq = type { i32, i32 }
%struct.i40iw_msix_vector = type { i32, i32 }
%struct.i40e_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.i40e_info*, i32*, i32)* }

@i40iw_client = common dso_local global i32 0, align 4
@I40IW_ERR_BAD_PTR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"create ceq status = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, %struct.i40e_info*)* @i40iw_setup_ceqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_setup_ceqs(%struct.i40iw_device* %0, %struct.i40e_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_device*, align 8
  %5 = alloca %struct.i40e_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i40iw_ceq*, align 8
  %9 = alloca %struct.i40iw_msix_vector*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %4, align 8
  store %struct.i40e_info* %1, %struct.i40e_info** %5, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %13 = icmp ne %struct.i40e_info* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %2
  %15 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %16 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %21 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.i40e_info*, i32*, i32)*, i32 (%struct.i40e_info*, i32*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.i40e_info*, i32*, i32)* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %28 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.i40e_info*, i32*, i32)*, i32 (%struct.i40e_info*, i32*, i32)** %30, align 8
  %32 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %33 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %34 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i32 %31(%struct.i40e_info* %32, i32* @i40iw_client, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %135

40:                                               ; preds = %26
  br label %43

41:                                               ; preds = %19, %14, %2
  %42 = load i32, i32* @I40IW_ERR_BAD_PTR, align 4
  store i32 %42, i32* %10, align 4
  br label %135

43:                                               ; preds = %40
  %44 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %45 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %48 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @min(i32 %46, i32 %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.i40iw_ceq* @kcalloc(i64 %53, i32 8, i32 %54)
  %56 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %57 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %56, i32 0, i32 1
  store %struct.i40iw_ceq* %55, %struct.i40iw_ceq** %57, align 8
  %58 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %59 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %58, i32 0, i32 1
  %60 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %59, align 8
  %61 = icmp ne %struct.i40iw_ceq* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %43
  %63 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %63, i32* %10, align 4
  br label %135

64:                                               ; preds = %43
  %65 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %66 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 0, i32 1
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %72

72:                                               ; preds = %129, %64
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %134

76:                                               ; preds = %72
  %77 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %78 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %77, i32 0, i32 1
  %79 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = getelementptr inbounds %struct.i40iw_ceq, %struct.i40iw_ceq* %79, i64 %80
  store %struct.i40iw_ceq* %81, %struct.i40iw_ceq** %8, align 8
  %82 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %83 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %8, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @i40iw_create_ceq(%struct.i40iw_device* %82, %struct.i40iw_ceq* %83, i64 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %134

91:                                               ; preds = %76
  %92 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %93 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %92, i32 0, i32 3
  %94 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = getelementptr inbounds %struct.i40iw_msix_vector, %struct.i40iw_msix_vector* %94, i64 %95
  store %struct.i40iw_msix_vector* %96, %struct.i40iw_msix_vector** %9, align 8
  %97 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %9, align 8
  %98 = getelementptr inbounds %struct.i40iw_msix_vector, %struct.i40iw_msix_vector* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %8, align 8
  %101 = getelementptr inbounds %struct.i40iw_ceq, %struct.i40iw_ceq* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %9, align 8
  %103 = getelementptr inbounds %struct.i40iw_msix_vector, %struct.i40iw_msix_vector* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %8, align 8
  %106 = getelementptr inbounds %struct.i40iw_ceq, %struct.i40iw_ceq* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %108 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %8, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %9, align 8
  %111 = call i32 @i40iw_configure_ceq_vector(%struct.i40iw_device* %107, %struct.i40iw_ceq* %108, i64 %109, %struct.i40iw_msix_vector* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %91
  %115 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %116 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %8, align 8
  %117 = call i32 @i40iw_destroy_ceq(%struct.i40iw_device* %115, %struct.i40iw_ceq* %116)
  br label %134

118:                                              ; preds = %91
  %119 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %120 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %119, i32 0, i32 0
  %121 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %9, align 8
  %122 = getelementptr inbounds %struct.i40iw_msix_vector, %struct.i40iw_msix_vector* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @i40iw_enable_intr(%struct.TYPE_6__* %120, i32 %123)
  %125 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %126 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %118
  %130 = load i64, i64* %6, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %6, align 8
  %132 = load i64, i64* %7, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %7, align 8
  br label %72

134:                                              ; preds = %114, %88, %72
  br label %135

135:                                              ; preds = %134, %62, %41, %39
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %135
  %139 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %140 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %138
  %144 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %145 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %144, i32 0, i32 1
  %146 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %145, align 8
  %147 = call i32 @kfree(%struct.i40iw_ceq* %146)
  %148 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %149 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %148, i32 0, i32 1
  store %struct.i40iw_ceq* null, %struct.i40iw_ceq** %149, align 8
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %3, align 4
  br label %155

151:                                              ; preds = %138, %135
  %152 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %153 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %151, %143
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i64 @min(i32, i32) #1

declare dso_local %struct.i40iw_ceq* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @i40iw_create_ceq(%struct.i40iw_device*, %struct.i40iw_ceq*, i64) #1

declare dso_local i32 @i40iw_pr_err(i8*, i32) #1

declare dso_local i32 @i40iw_configure_ceq_vector(%struct.i40iw_device*, %struct.i40iw_ceq*, i64, %struct.i40iw_msix_vector*) #1

declare dso_local i32 @i40iw_destroy_ceq(%struct.i40iw_device*, %struct.i40iw_ceq*) #1

declare dso_local i32 @i40iw_enable_intr(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @kfree(%struct.i40iw_ceq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
