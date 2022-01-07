; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_ieq_compl_pfpdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_ieq_compl_pfpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_puda_rsrc = type { i32 }
%struct.list_head = type { i32 }
%struct.i40iw_puda_buf = type { i64, i64, i64, i32, %struct.TYPE_2__, i32*, i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_puda_rsrc*, %struct.list_head*, %struct.list_head*, %struct.i40iw_puda_buf*, i64)* @i40iw_ieq_compl_pfpdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_ieq_compl_pfpdu(%struct.i40iw_puda_rsrc* %0, %struct.list_head* %1, %struct.list_head* %2, %struct.i40iw_puda_buf* %3, i64 %4) #0 {
  %6 = alloca %struct.i40iw_puda_rsrc*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.i40iw_puda_buf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.i40iw_puda_buf*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.i40iw_puda_rsrc* %0, %struct.i40iw_puda_rsrc** %6, align 8
  store %struct.list_head* %1, %struct.list_head** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store %struct.i40iw_puda_buf* %3, %struct.i40iw_puda_buf** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.list_head*, %struct.list_head** %8, align 8
  %16 = call %struct.i40iw_puda_buf* @i40iw_puda_get_listbuf(%struct.list_head* %15)
  store %struct.i40iw_puda_buf* %16, %struct.i40iw_puda_buf** %11, align 8
  %17 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %18 = icmp ne %struct.i40iw_puda_buf* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %143

20:                                               ; preds = %5
  %21 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %22 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = add nsw i64 %23, %24
  store i64 %25, i64* %12, align 8
  %26 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %27 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %9, align 8
  %32 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %31, i32 0, i32 6
  store i64 %30, i64* %32, align 8
  %33 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %9, align 8
  %34 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %39 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %9, align 8
  %43 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %42, i32 0, i32 5
  store i32* %41, i32** %43, align 8
  %44 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %45 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %9, align 8
  %46 = call i32 @i40iw_ieq_setup_tx_buf(%struct.i40iw_puda_buf* %44, %struct.i40iw_puda_buf* %45)
  %47 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %48 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %13, align 8
  %50 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %51 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %54 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = ptrtoint i32* %52 to i64
  %59 = ptrtoint i32* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 4
  store i64 %61, i64* %14, align 8
  br label %62

62:                                               ; preds = %128, %20
  %63 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %64 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %62
  %69 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %70 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %9, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @i40iw_ieq_copy_to_txbuf(%struct.i40iw_puda_buf* %69, %struct.i40iw_puda_buf* %70, i64 %71, i64 %72, i64 %73)
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %77 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, %75
  store i64 %79, i64* %77, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %82 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %81, i32 0, i32 5
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 %80
  store i32* %84, i32** %82, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %87 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %129

88:                                               ; preds = %62
  %89 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %90 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %9, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %94 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @i40iw_ieq_copy_to_txbuf(%struct.i40iw_puda_buf* %89, %struct.i40iw_puda_buf* %90, i64 %91, i64 %92, i64 %95)
  %97 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %98 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %13, align 8
  %101 = add nsw i64 %100, %99
  store i64 %101, i64* %13, align 8
  %102 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %103 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = sub nsw i64 %105, %104
  store i64 %106, i64* %10, align 8
  %107 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %6, align 8
  %108 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %109 = call i32 @i40iw_puda_ret_bufpool(%struct.i40iw_puda_rsrc* %107, %struct.i40iw_puda_buf* %108)
  %110 = load %struct.list_head*, %struct.list_head** %8, align 8
  %111 = call %struct.i40iw_puda_buf* @i40iw_puda_get_listbuf(%struct.list_head* %110)
  store %struct.i40iw_puda_buf* %111, %struct.i40iw_puda_buf** %11, align 8
  %112 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %113 = icmp ne %struct.i40iw_puda_buf* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %88
  br label %143

115:                                              ; preds = %88
  %116 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %117 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %116, i32 0, i32 5
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %120 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i32*
  %124 = ptrtoint i32* %118 to i64
  %125 = ptrtoint i32* %123 to i64
  %126 = sub i64 %124, %125
  %127 = sdiv exact i64 %126, 4
  store i64 %127, i64* %14, align 8
  br label %128

128:                                              ; preds = %115
  br i1 true, label %62, label %129

129:                                              ; preds = %128, %68
  %130 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %131 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %136 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %135, i32 0, i32 3
  %137 = load %struct.list_head*, %struct.list_head** %7, align 8
  %138 = call i32 @list_add(i32* %136, %struct.list_head* %137)
  br label %143

139:                                              ; preds = %129
  %140 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %6, align 8
  %141 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %11, align 8
  %142 = call i32 @i40iw_puda_ret_bufpool(%struct.i40iw_puda_rsrc* %140, %struct.i40iw_puda_buf* %141)
  br label %143

143:                                              ; preds = %19, %114, %139, %134
  ret void
}

declare dso_local %struct.i40iw_puda_buf* @i40iw_puda_get_listbuf(%struct.list_head*) #1

declare dso_local i32 @i40iw_ieq_setup_tx_buf(%struct.i40iw_puda_buf*, %struct.i40iw_puda_buf*) #1

declare dso_local i32 @i40iw_ieq_copy_to_txbuf(%struct.i40iw_puda_buf*, %struct.i40iw_puda_buf*, i64, i64, i64) #1

declare dso_local i32 @i40iw_puda_ret_bufpool(%struct.i40iw_puda_rsrc*, %struct.i40iw_puda_buf*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
