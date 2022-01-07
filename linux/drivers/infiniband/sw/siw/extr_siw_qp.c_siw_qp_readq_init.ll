; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_readq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_readq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"irq malloc for %d failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"orq malloc for %d failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ORD %d, IRD %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_qp*, i32, i32)* @siw_qp_readq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_qp_readq_init(%struct.siw_qp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.siw_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.siw_qp* %0, %struct.siw_qp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @roundup_pow_of_two(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @roundup_pow_of_two(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %14 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %18 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i8* @vzalloc(i32 %23)
  %25 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %26 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %28 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %3
  %32 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (%struct.siw_qp*, i8*, i32, ...) @siw_dbg_qp(%struct.siw_qp* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %36 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %73

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = call i8* @vzalloc(i32 %44)
  %46 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %47 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %49 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %68, label %52

52:                                               ; preds = %40
  %53 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 (%struct.siw_qp*, i8*, i32, ...) @siw_dbg_qp(%struct.siw_qp* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %57 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %60 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %63 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @vfree(i8* %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %73

68:                                               ; preds = %40
  %69 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (%struct.siw_qp*, i8*, i32, ...) @siw_dbg_qp(%struct.siw_qp* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %71)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %52, %31
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @siw_dbg_qp(%struct.siw_qp*, i8*, i32, ...) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
