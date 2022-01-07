; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_match_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_match_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_filedata = type { %struct.hfi1_ctxtdata*, i64, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }
%struct.hfi1_user_info = type { i64, i64, i64, i32 }
%struct.hfi1_ctxtdata = type { i64, i64, i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SC_KERNEL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@HFI1_MAX_SHARED_CTXTS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_filedata*, %struct.hfi1_user_info*, %struct.hfi1_ctxtdata*)* @match_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_ctxt(%struct.hfi1_filedata* %0, %struct.hfi1_user_info* %1, %struct.hfi1_ctxtdata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_filedata*, align 8
  %6 = alloca %struct.hfi1_user_info*, align 8
  %7 = alloca %struct.hfi1_ctxtdata*, align 8
  %8 = alloca %struct.hfi1_devdata*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.hfi1_filedata* %0, %struct.hfi1_filedata** %5, align 8
  store %struct.hfi1_user_info* %1, %struct.hfi1_user_info** %6, align 8
  store %struct.hfi1_ctxtdata* %2, %struct.hfi1_ctxtdata** %7, align 8
  %11 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %5, align 8
  %12 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %11, i32 0, i32 2
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  store %struct.hfi1_devdata* %13, %struct.hfi1_devdata** %8, align 8
  %14 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %15 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %14, i32 0, i32 6
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %20 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %19, i32 0, i32 6
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SC_KERNEL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %125

27:                                               ; preds = %18, %3
  %28 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %29 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hfi1_user_info*, %struct.hfi1_user_info** %6, align 8
  %32 = getelementptr inbounds %struct.hfi1_user_info, %struct.hfi1_user_info* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @memcmp(i32 %30, i32 %33, i32 4)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %27
  %37 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %38 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (...) @current_uid()
  %41 = call i64 @generate_jkey(i32 %40)
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %59, label %43

43:                                               ; preds = %36
  %44 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %45 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.hfi1_user_info*, %struct.hfi1_user_info** %6, align 8
  %48 = getelementptr inbounds %struct.hfi1_user_info, %struct.hfi1_user_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %53 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.hfi1_user_info*, %struct.hfi1_user_info** %6, align 8
  %56 = getelementptr inbounds %struct.hfi1_user_info, %struct.hfi1_user_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51, %43, %36, %27
  store i32 0, i32* %4, align 4
  br label %125

60:                                               ; preds = %51
  %61 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %62 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.hfi1_user_info*, %struct.hfi1_user_info** %6, align 8
  %65 = getelementptr inbounds %struct.hfi1_user_info, %struct.hfi1_user_info* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %125

71:                                               ; preds = %60
  %72 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %73 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %72, i32 0, i32 0
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %77 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @HFI1_MAX_SHARED_CTXTS, align 4
  %80 = call i64 @bitmap_empty(i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  %83 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %84 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %83, i32 0, i32 0
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  store i32 0, i32* %4, align 4
  br label %125

87:                                               ; preds = %71
  %88 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %89 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @HFI1_MAX_SHARED_CTXTS, align 4
  %92 = call i64 @find_first_zero_bit(i32 %90, i32 %91)
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %95 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp sge i64 %93, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %87
  %99 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %100 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %99, i32 0, i32 0
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load i32, i32* @EBUSY, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %125

105:                                              ; preds = %87
  %106 = load i64, i64* %10, align 8
  %107 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %5, align 8
  %108 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %5, align 8
  %110 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %113 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @__set_bit(i64 %111, i32 %114)
  %116 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %117 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %116, i32 0, i32 0
  %118 = load i64, i64* %9, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* %117, i64 %118)
  %120 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %121 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %5, align 8
  %122 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %121, i32 0, i32 0
  store %struct.hfi1_ctxtdata* %120, %struct.hfi1_ctxtdata** %122, align 8
  %123 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %124 = call i32 @hfi1_rcd_get(%struct.hfi1_ctxtdata* %123)
  store i32 1, i32* %4, align 4
  br label %125

125:                                              ; preds = %105, %98, %82, %68, %59, %26
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @generate_jkey(i32) #1

declare dso_local i32 @current_uid(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bitmap_empty(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @hfi1_rcd_get(%struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
