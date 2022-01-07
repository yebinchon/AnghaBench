; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_init_user_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_init_user_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_udata = type { i32 }
%struct.qedr_dev = type { i32 }
%struct.qedr_userq = type { i64, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"create user queue: failed ib_umem_get, got %ld\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@FW_PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_udata*, %struct.qedr_dev*, %struct.qedr_userq*, i32, i64, i32, i32, i32)* @qedr_init_user_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_init_user_queue(%struct.ib_udata* %0, %struct.qedr_dev* %1, %struct.qedr_userq* %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_udata*, align 8
  %11 = alloca %struct.qedr_dev*, align 8
  %12 = alloca %struct.qedr_userq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ib_udata* %0, %struct.ib_udata** %10, align 8
  store %struct.qedr_dev* %1, %struct.qedr_dev** %11, align 8
  store %struct.qedr_userq* %2, %struct.qedr_userq** %12, align 8
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %22 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load i64, i64* %14, align 8
  %24 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %25 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %27 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %28 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %31 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = call i32* @ib_umem_get(%struct.ib_udata* %26, i32 %29, i64 %32, i32 %33, i32 %34)
  %36 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %37 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %39 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @IS_ERR(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %8
  %44 = load %struct.qedr_dev*, %struct.qedr_dev** %11, align 8
  %45 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %46 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @PTR_ERR(i32* %47)
  %49 = call i32 @DP_ERR(%struct.qedr_dev* %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %51 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @PTR_ERR(i32* %52)
  store i32 %53, i32* %9, align 4
  br label %126

54:                                               ; preds = %8
  %55 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %56 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @ib_umem_page_count(i32* %57)
  %59 = load i32, i32* @PAGE_SHIFT, align 4
  %60 = load i32, i32* @FW_PAGE_SHIFT, align 4
  %61 = sub nsw i32 %59, %60
  %62 = shl i32 %58, %61
  store i32 %62, i32* %18, align 4
  %63 = load %struct.qedr_dev*, %struct.qedr_dev** %11, align 8
  %64 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %65 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %64, i32 0, i32 3
  %66 = load i32, i32* %18, align 4
  %67 = call i32 @qedr_prepare_pbl_tbl(%struct.qedr_dev* %63, i32* %65, i32 %66, i32 0)
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %19, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  br label %118

71:                                               ; preds = %54
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %104

74:                                               ; preds = %71
  %75 = load %struct.qedr_dev*, %struct.qedr_dev** %11, align 8
  %76 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %77 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %76, i32 0, i32 3
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i32* @qedr_alloc_pbl_tbl(%struct.qedr_dev* %75, i32* %77, i32 %78)
  %80 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %81 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %80, i32 0, i32 2
  store i32* %79, i32** %81, align 8
  %82 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %83 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = call i64 @IS_ERR(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %74
  %88 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %89 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @PTR_ERR(i32* %90)
  store i32 %91, i32* %19, align 4
  br label %118

92:                                               ; preds = %74
  %93 = load %struct.qedr_dev*, %struct.qedr_dev** %11, align 8
  %94 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %95 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %98 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %101 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %100, i32 0, i32 3
  %102 = load i32, i32* @FW_PAGE_SHIFT, align 4
  %103 = call i32 @qedr_populate_pbls(%struct.qedr_dev* %93, i32* %96, i32* %99, i32* %101, i32 %102)
  br label %117

104:                                              ; preds = %71
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call i32* @kzalloc(i32 4, i32 %105)
  %107 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %108 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %107, i32 0, i32 2
  store i32* %106, i32** %108, align 8
  %109 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %110 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %104
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %19, align 4
  br label %118

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116, %92
  store i32 0, i32* %9, align 4
  br label %126

118:                                              ; preds = %113, %87, %70
  %119 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %120 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @ib_umem_release(i32* %121)
  %123 = load %struct.qedr_userq*, %struct.qedr_userq** %12, align 8
  %124 = getelementptr inbounds %struct.qedr_userq, %struct.qedr_userq* %123, i32 0, i32 1
  store i32* null, i32** %124, align 8
  %125 = load i32, i32* %19, align 4
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %118, %117, %43
  %127 = load i32, i32* %9, align 4
  ret i32 %127
}

declare dso_local i32* @ib_umem_get(%struct.ib_udata*, i32, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ib_umem_page_count(i32*) #1

declare dso_local i32 @qedr_prepare_pbl_tbl(%struct.qedr_dev*, i32*, i32, i32) #1

declare dso_local i32* @qedr_alloc_pbl_tbl(%struct.qedr_dev*, i32*, i32) #1

declare dso_local i32 @qedr_populate_pbls(%struct.qedr_dev*, i32*, i32*, i32*, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @ib_umem_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
