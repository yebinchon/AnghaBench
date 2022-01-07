; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_alloc_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_alloc_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ocrdma_mr = type { %struct.ocrdma_mr*, %struct.TYPE_6__, %struct.ib_mr }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i64, i64, i64 }
%struct.ocrdma_pd = type { i32 }
%struct.ocrdma_dev = type { i64*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@IB_MR_TYPE_MEM_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_MAX_STAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @ocrdma_alloc_mr(%struct.ib_pd* %0, i32 %1, i64 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_mr*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocrdma_mr*, align 8
  %12 = alloca %struct.ocrdma_pd*, align 8
  %13 = alloca %struct.ocrdma_dev*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %14 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %15 = call %struct.ocrdma_pd* @get_ocrdma_pd(%struct.ib_pd* %14)
  store %struct.ocrdma_pd* %15, %struct.ocrdma_pd** %12, align 8
  %16 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %17 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %18)
  store %struct.ocrdma_dev* %19, %struct.ocrdma_dev** %13, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @IB_MR_TYPE_MEM_REG, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.ib_mr* @ERR_PTR(i32 %25)
  store %struct.ib_mr* %26, %struct.ib_mr** %5, align 8
  br label %153

27:                                               ; preds = %4
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %13, align 8
  %30 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %28, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.ib_mr* @ERR_PTR(i32 %36)
  store %struct.ib_mr* %37, %struct.ib_mr** %5, align 8
  br label %153

38:                                               ; preds = %27
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.ocrdma_mr* @kzalloc(i32 64, i32 %39)
  store %struct.ocrdma_mr* %40, %struct.ocrdma_mr** %11, align 8
  %41 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %42 = icmp ne %struct.ocrdma_mr* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.ib_mr* @ERR_PTR(i32 %45)
  store %struct.ib_mr* %46, %struct.ib_mr** %5, align 8
  br label %153

47:                                               ; preds = %38
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.ocrdma_mr* @kcalloc(i64 %48, i32 4, i32 %49)
  %51 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %52 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %51, i32 0, i32 0
  store %struct.ocrdma_mr* %50, %struct.ocrdma_mr** %52, align 8
  %53 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %54 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %53, i32 0, i32 0
  %55 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %54, align 8
  %56 = icmp ne %struct.ocrdma_mr* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  br label %147

60:                                               ; preds = %47
  %61 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %13, align 8
  %62 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @ocrdma_get_pbl_info(%struct.ocrdma_dev* %61, %struct.ocrdma_mr* %62, i64 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %142

68:                                               ; preds = %60
  %69 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %70 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %73 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 6
  store i64 0, i64* %74, align 8
  %75 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %76 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 5
  store i64 0, i64* %77, align 8
  %78 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %79 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %82 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  %84 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %85 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %13, align 8
  %88 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %89 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %88, i32 0, i32 1
  %90 = call i32 @ocrdma_build_pbl_tbl(%struct.ocrdma_dev* %87, %struct.TYPE_6__* %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %68
  br label %142

94:                                               ; preds = %68
  %95 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %13, align 8
  %96 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %97 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %96, i32 0, i32 1
  %98 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %12, align 8
  %99 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ocrdma_reg_mr(%struct.ocrdma_dev* %95, %struct.TYPE_6__* %97, i32 %100, i32 0)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %137

105:                                              ; preds = %94
  %106 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %107 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %111 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %114 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %118 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %121 = ptrtoint %struct.ocrdma_mr* %120 to i64
  %122 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %13, align 8
  %123 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %126 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = ashr i32 %128, 8
  %130 = load i32, i32* @OCRDMA_MAX_STAG, align 4
  %131 = sub nsw i32 %130, 1
  %132 = and i32 %129, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %124, i64 %133
  store i64 %121, i64* %134, align 8
  %135 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %136 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %135, i32 0, i32 2
  store %struct.ib_mr* %136, %struct.ib_mr** %5, align 8
  br label %153

137:                                              ; preds = %104
  %138 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %13, align 8
  %139 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %140 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %139, i32 0, i32 1
  %141 = call i32 @ocrdma_free_mr_pbl_tbl(%struct.ocrdma_dev* %138, %struct.TYPE_6__* %140)
  br label %142

142:                                              ; preds = %137, %93, %67
  %143 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %144 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %143, i32 0, i32 0
  %145 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %144, align 8
  %146 = call i32 @kfree(%struct.ocrdma_mr* %145)
  br label %147

147:                                              ; preds = %142, %57
  %148 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %11, align 8
  %149 = call i32 @kfree(%struct.ocrdma_mr* %148)
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  %152 = call %struct.ib_mr* @ERR_PTR(i32 %151)
  store %struct.ib_mr* %152, %struct.ib_mr** %5, align 8
  br label %153

153:                                              ; preds = %147, %105, %43, %34, %23
  %154 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  ret %struct.ib_mr* %154
}

declare dso_local %struct.ocrdma_pd* @get_ocrdma_pd(%struct.ib_pd*) #1

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local %struct.ocrdma_mr* @kzalloc(i32, i32) #1

declare dso_local %struct.ocrdma_mr* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @ocrdma_get_pbl_info(%struct.ocrdma_dev*, %struct.ocrdma_mr*, i64) #1

declare dso_local i32 @ocrdma_build_pbl_tbl(%struct.ocrdma_dev*, %struct.TYPE_6__*) #1

declare dso_local i32 @ocrdma_reg_mr(%struct.ocrdma_dev*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ocrdma_free_mr_pbl_tbl(%struct.ocrdma_dev*, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.ocrdma_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
