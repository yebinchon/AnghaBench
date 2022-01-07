; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_finish_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_finish_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_cryp = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_cryp*, i32)* @stm32_cryp_finish_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_cryp_finish_req(%struct.stm32_cryp* %0, i32 %1) #0 {
  %3 = alloca %struct.stm32_cryp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stm32_cryp* %0, %struct.stm32_cryp** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %2
  %12 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %13 = call i64 @is_gcm(%struct.stm32_cryp* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %17 = call i64 @is_ccm(%struct.stm32_cryp* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %11
  %20 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %21 = call i32 @stm32_cryp_read_auth_tag(%struct.stm32_cryp* %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %15, %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  %26 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %27 = call i64 @is_gcm(%struct.stm32_cryp* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %31 = call i64 @is_ccm(%struct.stm32_cryp* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %35 = call i32 @stm32_cryp_get_iv(%struct.stm32_cryp* %34)
  br label %36

36:                                               ; preds = %33, %29, %25, %22
  %37 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %38 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %37, i32 0, i32 11
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %94

41:                                               ; preds = %36
  %42 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %43 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %42, i32 0, i32 10
  %44 = call i8* @sg_virt(i32* %43)
  store i8* %44, i8** %5, align 8
  %45 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %46 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %45, i32 0, i32 9
  %47 = call i8* @sg_virt(i32* %46)
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %50 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %53 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sg_copy_buf(i8* %48, i32 %51, i32 0, i32 %54, i32 1)
  %56 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %57 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %60 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ALIGN(i32 %58, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %41
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @get_order(i32 %66)
  br label %69

68:                                               ; preds = %41
  br label %69

69:                                               ; preds = %68, %65
  %70 = phi i32 [ %67, %65 ], [ 1, %68 ]
  store i32 %70, i32* %7, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = ptrtoint i8* %71 to i64
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @free_pages(i64 %72, i32 %73)
  %75 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %76 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %79 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ALIGN(i32 %77, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %69
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @get_order(i32 %85)
  br label %88

87:                                               ; preds = %69
  br label %88

88:                                               ; preds = %87, %84
  %89 = phi i32 [ %86, %84 ], [ 1, %87 ]
  store i32 %89, i32* %7, align 4
  %90 = load i8*, i8** %6, align 8
  %91 = ptrtoint i8* %90 to i64
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @free_pages(i64 %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %36
  %95 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %96 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @pm_runtime_mark_last_busy(i32 %97)
  %99 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %100 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @pm_runtime_put_autosuspend(i32 %101)
  %103 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %104 = call i64 @is_gcm(%struct.stm32_cryp* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %94
  %107 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %108 = call i64 @is_ccm(%struct.stm32_cryp* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %106, %94
  %111 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %112 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %115 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @crypto_finalize_aead_request(i32 %113, i32 %116, i32 %117)
  br label %128

119:                                              ; preds = %106
  %120 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %121 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %124 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @crypto_finalize_ablkcipher_request(i32 %122, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %119, %110
  %129 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %130 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %135 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @memset(i32 %133, i32 0, i32 %138)
  ret void
}

declare dso_local i64 @is_gcm(%struct.stm32_cryp*) #1

declare dso_local i64 @is_ccm(%struct.stm32_cryp*) #1

declare dso_local i32 @stm32_cryp_read_auth_tag(%struct.stm32_cryp*) #1

declare dso_local i32 @stm32_cryp_get_iv(%struct.stm32_cryp*) #1

declare dso_local i8* @sg_virt(i32*) #1

declare dso_local i32 @sg_copy_buf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @crypto_finalize_aead_request(i32, i32, i32) #1

declare dso_local i32 @crypto_finalize_ablkcipher_request(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
