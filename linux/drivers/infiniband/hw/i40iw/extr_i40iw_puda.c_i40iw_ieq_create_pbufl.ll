; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_ieq_create_pbufl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_ieq_create_pbufl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_pfpdu = type { i32 }
%struct.list_head = type { i32 }
%struct.i40iw_puda_buf = type { i64, i64, i32 }

@I40IW_ERR_list_empty = common dso_local global i32 0, align 4
@I40IW_ERR_SEQ_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_pfpdu*, %struct.list_head*, %struct.list_head*, %struct.i40iw_puda_buf*, i64)* @i40iw_ieq_create_pbufl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_ieq_create_pbufl(%struct.i40iw_pfpdu* %0, %struct.list_head* %1, %struct.list_head* %2, %struct.i40iw_puda_buf* %3, i64 %4) #0 {
  %6 = alloca %struct.i40iw_pfpdu*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.i40iw_puda_buf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i40iw_puda_buf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.i40iw_pfpdu* %0, %struct.i40iw_pfpdu** %6, align 8
  store %struct.list_head* %1, %struct.list_head** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store %struct.i40iw_puda_buf* %3, %struct.i40iw_puda_buf** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %9, align 8
  %18 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  store i64 %20, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %9, align 8
  %22 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %9, align 8
  %25 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  store i64 %27, i64* %13, align 8
  br label %28

28:                                               ; preds = %72, %5
  %29 = load %struct.list_head*, %struct.list_head** %7, align 8
  %30 = call %struct.i40iw_puda_buf* @i40iw_puda_get_listbuf(%struct.list_head* %29)
  store %struct.i40iw_puda_buf* %30, %struct.i40iw_puda_buf** %12, align 8
  %31 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %12, align 8
  %32 = icmp ne %struct.i40iw_puda_buf* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @I40IW_ERR_list_empty, align 4
  store i32 %34, i32* %11, align 4
  br label %76

35:                                               ; preds = %28
  %36 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %12, align 8
  %37 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %36, i32 0, i32 2
  %38 = load %struct.list_head*, %struct.list_head** %8, align 8
  %39 = call i32 @list_add_tail(i32* %37, %struct.list_head* %38)
  %40 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %12, align 8
  %41 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %13, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load %struct.i40iw_pfpdu*, %struct.i40iw_pfpdu** %6, align 8
  %47 = getelementptr inbounds %struct.i40iw_pfpdu, %struct.i40iw_pfpdu* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @I40IW_ERR_SEQ_NUM, align 4
  store i32 %50, i32* %11, align 4
  br label %76

51:                                               ; preds = %35
  %52 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %12, align 8
  %53 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %14, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %15, align 4
  br label %71

58:                                               ; preds = %51
  %59 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %12, align 8
  %60 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %14, align 8
  %63 = sub nsw i64 %62, %61
  store i64 %63, i64* %14, align 8
  %64 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %12, align 8
  %65 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %12, align 8
  %68 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  store i64 %70, i64* %13, align 8
  br label %71

71:                                               ; preds = %58, %57
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br i1 %75, label %28, label %76

76:                                               ; preds = %72, %45, %33
  %77 = load i32, i32* %11, align 4
  ret i32 %77
}

declare dso_local %struct.i40iw_puda_buf* @i40iw_puda_get_listbuf(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
