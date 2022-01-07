; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_fastreg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_fastreg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.siw_sqe = type { i32, i32, i64 }
%struct.ib_mr = type { i32, i32 }
%struct.siw_device = type { i32 }
%struct.siw_mem = type { i32, i32, i32, i32, %struct.ib_pd* }

@.str = private unnamed_addr constant [13 x i8] c"STag 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"siw: fastreg: STag 0x%08x unknown\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"siw: fastreg: STag 0x%08x: bad MR\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"siw: fastreg: PD mismatch\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"siw: fastreg: STag 0x%08x already valid\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"STag 0x%08x now valid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pd*, %struct.siw_sqe*)* @siw_fastreg_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_fastreg_mr(%struct.ib_pd* %0, %struct.siw_sqe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.siw_sqe*, align 8
  %6 = alloca %struct.ib_mr*, align 8
  %7 = alloca %struct.siw_device*, align 8
  %8 = alloca %struct.siw_mem*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store %struct.siw_sqe* %1, %struct.siw_sqe** %5, align 8
  %10 = load %struct.siw_sqe*, %struct.siw_sqe** %5, align 8
  %11 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ib_mr*
  store %struct.ib_mr* %13, %struct.ib_mr** %6, align 8
  %14 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %15 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.siw_device* @to_siw_dev(i32 %16)
  store %struct.siw_device* %17, %struct.siw_device** %7, align 8
  %18 = load %struct.siw_device*, %struct.siw_device** %7, align 8
  %19 = load %struct.siw_sqe*, %struct.siw_sqe** %5, align 8
  %20 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %21, 8
  %23 = call %struct.siw_mem* @siw_mem_id2obj(%struct.siw_device* %18, i32 %22)
  store %struct.siw_mem* %23, %struct.siw_mem** %8, align 8
  store i32 0, i32* %9, align 4
  %24 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %25 = load %struct.siw_sqe*, %struct.siw_sqe** %5, align 8
  %26 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @siw_dbg_pd(%struct.ib_pd* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.siw_mem*, %struct.siw_mem** %8, align 8
  %30 = icmp ne %struct.siw_mem* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.ib_mr*, %struct.ib_mr** %6, align 8
  %33 = icmp ne %struct.ib_mr* %32, null
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %31, %2
  %36 = phi i1 [ true, %2 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.siw_sqe*, %struct.siw_sqe** %5, align 8
  %42 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %120

47:                                               ; preds = %35
  %48 = load %struct.ib_mr*, %struct.ib_mr** %6, align 8
  %49 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 8
  %52 = load %struct.siw_sqe*, %struct.siw_sqe** %5, align 8
  %53 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = ashr i32 %54, 8
  %56 = icmp ne i32 %51, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %47
  %61 = load %struct.siw_sqe*, %struct.siw_sqe** %5, align 8
  %62 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %9, align 4
  br label %116

67:                                               ; preds = %47
  %68 = load %struct.siw_mem*, %struct.siw_mem** %8, align 8
  %69 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %68, i32 0, i32 4
  %70 = load %struct.ib_pd*, %struct.ib_pd** %69, align 8
  %71 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %72 = icmp ne %struct.ib_pd* %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  br label %116

80:                                               ; preds = %67
  %81 = load %struct.siw_mem*, %struct.siw_mem** %8, align 8
  %82 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.siw_sqe*, %struct.siw_sqe** %5, align 8
  %88 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %9, align 4
  br label %116

93:                                               ; preds = %80
  %94 = load %struct.siw_sqe*, %struct.siw_sqe** %5, align 8
  %95 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.siw_mem*, %struct.siw_mem** %8, align 8
  %98 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.siw_sqe*, %struct.siw_sqe** %5, align 8
  %100 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.siw_mem*, %struct.siw_mem** %8, align 8
  %103 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.siw_mem*, %struct.siw_mem** %8, align 8
  %105 = load %struct.siw_sqe*, %struct.siw_sqe** %5, align 8
  %106 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @siw_dbg_mem(%struct.siw_mem* %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  %109 = load %struct.ib_mr*, %struct.ib_mr** %6, align 8
  %110 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.siw_mem*, %struct.siw_mem** %8, align 8
  %113 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.siw_mem*, %struct.siw_mem** %8, align 8
  %115 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  br label %116

116:                                              ; preds = %93, %86, %76, %60
  %117 = load %struct.siw_mem*, %struct.siw_mem** %8, align 8
  %118 = call i32 @siw_mem_put(%struct.siw_mem* %117)
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %40
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.siw_device* @to_siw_dev(i32) #1

declare dso_local %struct.siw_mem* @siw_mem_id2obj(%struct.siw_device*, i32) #1

declare dso_local i32 @siw_dbg_pd(%struct.ib_pd*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @siw_dbg_mem(%struct.siw_mem*, i8*, i32) #1

declare dso_local i32 @siw_mem_put(%struct.siw_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
