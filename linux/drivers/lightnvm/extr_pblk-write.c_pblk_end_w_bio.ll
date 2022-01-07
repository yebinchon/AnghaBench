; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_end_w_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_end_w_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_rb, i32 }
%struct.pblk_rb = type { i32 }
%struct.nvm_rq = type { i32, i32 }
%struct.pblk_c_ctx = type { i32, i32, i64 }
%struct.bio = type { i32 }
%struct.pblk_w_ctx = type { i32, i32 }

@PBLK_FLUSH_ENTRY = common dso_local global i32 0, align 4
@PBLK_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pblk*, %struct.nvm_rq*, %struct.pblk_c_ctx*)* @pblk_end_w_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pblk_end_w_bio(%struct.pblk* %0, %struct.nvm_rq* %1, %struct.pblk_c_ctx* %2) #0 {
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.nvm_rq*, align 8
  %6 = alloca %struct.pblk_c_ctx*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.pblk_rb*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pblk_w_ctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %5, align 8
  store %struct.pblk_c_ctx* %2, %struct.pblk_c_ctx** %6, align 8
  %14 = load %struct.pblk*, %struct.pblk** %4, align 8
  %15 = getelementptr inbounds %struct.pblk, %struct.pblk* %14, i32 0, i32 0
  store %struct.pblk_rb* %15, %struct.pblk_rb** %8, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %58, %3
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %16
  %23 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %12, align 4
  %28 = load %struct.pblk_rb*, %struct.pblk_rb** %8, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call %struct.pblk_w_ctx* @pblk_rb_w_ctx(%struct.pblk_rb* %28, i32 %29)
  store %struct.pblk_w_ctx* %30, %struct.pblk_w_ctx** %11, align 8
  %31 = load %struct.pblk_w_ctx*, %struct.pblk_w_ctx** %11, align 8
  %32 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @READ_ONCE(i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @PBLK_FLUSH_ENTRY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %22
  %40 = load i32, i32* @PBLK_FLUSH_ENTRY, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %13, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %13, align 4
  %44 = load %struct.pblk_w_ctx*, %struct.pblk_w_ctx** %11, align 8
  %45 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %44, i32 0, i32 1
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @smp_store_release(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %22
  br label %49

49:                                               ; preds = %54, %48
  %50 = load %struct.pblk_w_ctx*, %struct.pblk_w_ctx** %11, align 8
  %51 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %50, i32 0, i32 0
  %52 = call %struct.bio* @bio_list_pop(i32* %51)
  store %struct.bio* %52, %struct.bio** %7, align 8
  %53 = icmp ne %struct.bio* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.bio*, %struct.bio** %7, align 8
  %56 = call i32 @bio_endio(%struct.bio* %55)
  br label %49

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %16

61:                                               ; preds = %16
  %62 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %6, align 8
  %63 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.pblk*, %struct.pblk** %4, align 8
  %68 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %69 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %6, align 8
  %72 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %6, align 8
  %75 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @pblk_bio_free_pages(%struct.pblk* %67, i32 %70, i32 %73, i64 %76)
  br label %78

78:                                               ; preds = %66, %61
  %79 = load %struct.pblk*, %struct.pblk** %4, align 8
  %80 = getelementptr inbounds %struct.pblk, %struct.pblk* %79, i32 0, i32 0
  %81 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %6, align 8
  %82 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @pblk_rb_sync_advance(%struct.pblk_rb* %80, i32 %83)
  store i64 %84, i64* %9, align 8
  %85 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %86 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @bio_put(i32 %87)
  %89 = load %struct.pblk*, %struct.pblk** %4, align 8
  %90 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %91 = load i32, i32* @PBLK_WRITE, align 4
  %92 = call i32 @pblk_free_rqd(%struct.pblk* %89, %struct.nvm_rq* %90, i32 %91)
  %93 = load i64, i64* %9, align 8
  ret i64 %93
}

declare dso_local %struct.pblk_w_ctx* @pblk_rb_w_ctx(%struct.pblk_rb*, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @smp_store_release(i32*, i32) #1

declare dso_local %struct.bio* @bio_list_pop(i32*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i32 @pblk_bio_free_pages(%struct.pblk*, i32, i32, i64) #1

declare dso_local i64 @pblk_rb_sync_advance(%struct.pblk_rb*, i32) #1

declare dso_local i32 @bio_put(i32) #1

declare dso_local i32 @pblk_free_rqd(%struct.pblk*, %struct.nvm_rq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
