; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_alloc_srq_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_alloc_srq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_pd = type { i32 }
%struct.mthca_srq = type { i32, i32, i8*, i32, i32, i32, i32 }
%struct.ib_udata = type { i32 }
%struct.mthca_data_seg = type { i32 }
%struct.mthca_next_seg = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTHCA_MAX_DIRECT_SRQ_SIZE = common dso_local global i32 0, align 4
@MTHCA_INVAL_LKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*, %struct.mthca_pd*, %struct.mthca_srq*, %struct.ib_udata*)* @mthca_alloc_srq_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_alloc_srq_buf(%struct.mthca_dev* %0, %struct.mthca_pd* %1, %struct.mthca_srq* %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mthca_dev*, align 8
  %7 = alloca %struct.mthca_pd*, align 8
  %8 = alloca %struct.mthca_srq*, align 8
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.mthca_data_seg*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mthca_next_seg*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %6, align 8
  store %struct.mthca_pd* %1, %struct.mthca_pd** %7, align 8
  store %struct.mthca_srq* %2, %struct.mthca_srq** %8, align 8
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %15 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %16 = icmp ne %struct.ib_udata* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %133

18:                                               ; preds = %4
  %19 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %20 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @kmalloc_array(i32 %21, i32 4, i32 %22)
  %24 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %25 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %27 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %133

33:                                               ; preds = %18
  %34 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %35 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %36 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %39 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %37, %40
  %42 = load i32, i32* @MTHCA_MAX_DIRECT_SRQ_SIZE, align 4
  %43 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %44 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %43, i32 0, i32 6
  %45 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %46 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %45, i32 0, i32 5
  %47 = load %struct.mthca_pd*, %struct.mthca_pd** %7, align 8
  %48 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %49 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %48, i32 0, i32 4
  %50 = call i32 @mthca_buf_alloc(%struct.mthca_dev* %34, i32 %41, i32 %42, i32* %44, i32* %46, %struct.mthca_pd* %47, i32 1, i32* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %33
  %54 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %55 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @kfree(i32 %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %5, align 4
  br label %133

59:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %121, %59
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %63 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %124

66:                                               ; preds = %60
  %67 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i8* @get_wqe(%struct.mthca_srq* %67, i32 %68)
  store i8* %69, i8** %11, align 8
  %70 = bitcast i8* %69 to %struct.mthca_next_seg*
  store %struct.mthca_next_seg* %70, %struct.mthca_next_seg** %14, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %73 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = icmp slt i32 %71, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %66
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i8*, i8** %11, align 8
  %81 = call i32* @wqe_to_link(i8* %80)
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  %84 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %85 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %83, %86
  %88 = or i32 %87, 1
  %89 = call i64 @htonl(i32 %88)
  %90 = load %struct.mthca_next_seg*, %struct.mthca_next_seg** %14, align 8
  %91 = getelementptr inbounds %struct.mthca_next_seg, %struct.mthca_next_seg* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %97

92:                                               ; preds = %66
  %93 = load i8*, i8** %11, align 8
  %94 = call i32* @wqe_to_link(i8* %93)
  store i32 -1, i32* %94, align 4
  %95 = load %struct.mthca_next_seg*, %struct.mthca_next_seg** %14, align 8
  %96 = getelementptr inbounds %struct.mthca_next_seg, %struct.mthca_next_seg* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %92, %77
  %98 = load i8*, i8** %11, align 8
  %99 = getelementptr i8, i8* %98, i64 8
  %100 = bitcast i8* %99 to %struct.mthca_data_seg*
  store %struct.mthca_data_seg* %100, %struct.mthca_data_seg** %10, align 8
  br label %101

101:                                              ; preds = %117, %97
  %102 = load %struct.mthca_data_seg*, %struct.mthca_data_seg** %10, align 8
  %103 = bitcast %struct.mthca_data_seg* %102 to i8*
  %104 = load i8*, i8** %11, align 8
  %105 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %106 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 1, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr i8, i8* %104, i64 %109
  %111 = icmp ult i8* %103, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %101
  %113 = load i32, i32* @MTHCA_INVAL_LKEY, align 4
  %114 = call i32 @cpu_to_be32(i32 %113)
  %115 = load %struct.mthca_data_seg*, %struct.mthca_data_seg** %10, align 8
  %116 = getelementptr inbounds %struct.mthca_data_seg, %struct.mthca_data_seg* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %112
  %118 = load %struct.mthca_data_seg*, %struct.mthca_data_seg** %10, align 8
  %119 = getelementptr inbounds %struct.mthca_data_seg, %struct.mthca_data_seg* %118, i32 1
  store %struct.mthca_data_seg* %119, %struct.mthca_data_seg** %10, align 8
  br label %101

120:                                              ; preds = %101
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %13, align 4
  br label %60

124:                                              ; preds = %60
  %125 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %126 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %127 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sub nsw i32 %128, 1
  %130 = call i8* @get_wqe(%struct.mthca_srq* %125, i32 %129)
  %131 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %132 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %124, %53, %30, %17
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @mthca_buf_alloc(%struct.mthca_dev*, i32, i32, i32*, i32*, %struct.mthca_pd*, i32, i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i8* @get_wqe(%struct.mthca_srq*, i32) #1

declare dso_local i32* @wqe_to_link(i8*) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
