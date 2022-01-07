; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_copy_sgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_copy_sgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_cryp = type { i32, i32, i32, i32, i32*, i32*, i32, i32*, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Can't allocate pages when unaligned\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_cryp*)* @stm32_cryp_copy_sgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_cryp_copy_sgs(%struct.stm32_cryp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_cryp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stm32_cryp* %0, %struct.stm32_cryp** %3, align 8
  %9 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %10 = call i32 @stm32_cryp_check_io_aligned(%struct.stm32_cryp* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %14 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  store i32 0, i32* %2, align 4
  br label %106

15:                                               ; preds = %1
  %16 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %17 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %20 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ALIGN(i32 %18, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @get_order(i32 %26)
  br label %29

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ %27, %25 ], [ 1, %28 ]
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @__get_free_pages(i32 %31, i32 %32)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %4, align 8
  %35 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %36 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %39 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ALIGN(i32 %37, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @get_order(i32 %45)
  br label %48

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi i32 [ %46, %44 ], [ 1, %47 ]
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @__get_free_pages(i32 %50, i32 %51)
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %5, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i8*, i8** %5, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %56, %48
  %60 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %61 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %65 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load i32, i32* @EFAULT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %106

68:                                               ; preds = %56
  %69 = load i8*, i8** %4, align 8
  %70 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %71 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %70, i32 0, i32 7
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %74 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @sg_copy_buf(i8* %69, i32* %72, i32 0, i32 %75, i32 0)
  %77 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %78 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %77, i32 0, i32 6
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @sg_init_one(i32* %78, i8* %79, i32 %80)
  %82 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %83 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %82, i32 0, i32 6
  %84 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %85 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %84, i32 0, i32 7
  store i32* %83, i32** %85, align 8
  %86 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %87 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %89 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %88, i32 0, i32 3
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @sg_init_one(i32* %89, i8* %90, i32 %91)
  %93 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %94 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %97 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %96, i32 0, i32 5
  store i32* %95, i32** %97, align 8
  %98 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %99 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %98, i32 0, i32 3
  %100 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %101 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %100, i32 0, i32 4
  store i32* %99, i32** %101, align 8
  %102 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %103 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %102, i32 0, i32 2
  store i32 1, i32* %103, align 8
  %104 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %105 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %68, %59, %12
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @stm32_cryp_check_io_aligned(%struct.stm32_cryp*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sg_copy_buf(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @sg_init_one(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
