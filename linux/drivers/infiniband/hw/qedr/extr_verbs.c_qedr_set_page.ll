; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_set_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_set_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.qedr_mr = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.qedr_pbl*, %struct.TYPE_3__ }
%struct.qedr_pbl = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.regpair = type { i8*, i8* }

@.str = private unnamed_addr constant [29 x i8] c"qedr_set_page fails when %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QEDR_MSG_MR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"qedr_set_page pages[%d] = 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mr*, i64)* @qedr_set_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_set_page(%struct.ib_mr* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_mr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qedr_mr*, align 8
  %7 = alloca %struct.qedr_pbl*, align 8
  %8 = alloca %struct.regpair*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %11 = call %struct.qedr_mr* @get_qedr_mr(%struct.ib_mr* %10)
  store %struct.qedr_mr* %11, %struct.qedr_mr** %6, align 8
  %12 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %13 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %16 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %14, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %26 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %29 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @DP_ERR(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %90

34:                                               ; preds = %2
  %35 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %36 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @QEDR_MSG_MR, align 4
  %39 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %40 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @DP_DEBUG(i32 %37, i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %41, i64 %42)
  %44 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %45 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = udiv i64 %49, 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %53 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.qedr_pbl*, %struct.qedr_pbl** %54, align 8
  %56 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %57 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sdiv i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %55, i64 %61
  store %struct.qedr_pbl* %62, %struct.qedr_pbl** %7, align 8
  %63 = load %struct.qedr_pbl*, %struct.qedr_pbl** %7, align 8
  %64 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.regpair*
  store %struct.regpair* %66, %struct.regpair** %8, align 8
  %67 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %68 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = srem i32 %69, %70
  %72 = load %struct.regpair*, %struct.regpair** %8, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds %struct.regpair, %struct.regpair* %72, i64 %73
  store %struct.regpair* %74, %struct.regpair** %8, align 8
  %75 = load i64, i64* %5, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = load %struct.regpair*, %struct.regpair** %8, align 8
  %79 = getelementptr inbounds %struct.regpair, %struct.regpair* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call i64 @upper_32_bits(i64 %80)
  %82 = trunc i64 %81 to i32
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = load %struct.regpair*, %struct.regpair** %8, align 8
  %85 = getelementptr inbounds %struct.regpair, %struct.regpair* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %87 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %34, %24
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.qedr_mr* @get_qedr_mr(%struct.ib_mr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DP_ERR(i32, i8*, i32) #1

declare dso_local i32 @DP_DEBUG(i32, i32, i8*, i32, i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
