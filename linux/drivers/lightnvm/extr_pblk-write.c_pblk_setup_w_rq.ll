; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_setup_w_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_setup_w_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_meta }
%struct.pblk_line_meta = type { i32 }
%struct.nvm_rq = type { i32 }
%struct.ppa_addr = type { i32 }
%struct.pblk_line = type { i32 }
%struct.pblk_c_ctx = type { i32, i32, i64*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pblk_end_io_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.nvm_rq*, %struct.ppa_addr*)* @pblk_setup_w_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_setup_w_rq(%struct.pblk* %0, %struct.nvm_rq* %1, %struct.ppa_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca %struct.nvm_rq*, align 8
  %7 = alloca %struct.ppa_addr*, align 8
  %8 = alloca %struct.pblk_line_meta*, align 8
  %9 = alloca %struct.pblk_line*, align 8
  %10 = alloca %struct.pblk_c_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %6, align 8
  store %struct.ppa_addr* %2, %struct.ppa_addr** %7, align 8
  %16 = load %struct.pblk*, %struct.pblk** %5, align 8
  %17 = getelementptr inbounds %struct.pblk, %struct.pblk* %16, i32 0, i32 0
  store %struct.pblk_line_meta* %17, %struct.pblk_line_meta** %8, align 8
  %18 = load %struct.pblk*, %struct.pblk** %5, align 8
  %19 = call %struct.pblk_line* @pblk_line_get_erase(%struct.pblk* %18)
  store %struct.pblk_line* %19, %struct.pblk_line** %9, align 8
  %20 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %21 = call %struct.pblk_c_ctx* @nvm_rq_to_pdu(%struct.nvm_rq* %20)
  store %struct.pblk_c_ctx* %21, %struct.pblk_c_ctx** %10, align 8
  %22 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %10, align 8
  %23 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %10, align 8
  %26 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = add i32 %28, %29
  store i32 %30, i32* %13, align 4
  %31 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %8, align 8
  %32 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i64* @kzalloc(i32 %33, i32 %34)
  store i64* %35, i64** %14, align 8
  %36 = load i64*, i64** %14, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %91

41:                                               ; preds = %3
  %42 = load i64*, i64** %14, align 8
  %43 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %10, align 8
  %44 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %43, i32 0, i32 2
  store i64* %42, i64** %44, align 8
  %45 = load %struct.pblk*, %struct.pblk** %5, align 8
  %46 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @pblk_end_io_write, align 4
  %49 = call i32 @pblk_alloc_w_rq(%struct.pblk* %45, %struct.nvm_rq* %46, i32 %47, i32 %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load i64*, i64** %14, align 8
  %54 = call i32 @kfree(i64* %53)
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %4, align 4
  br label %91

56:                                               ; preds = %41
  %57 = load %struct.pblk_line*, %struct.pblk_line** %9, align 8
  %58 = icmp ne %struct.pblk_line* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.pblk_line*, %struct.pblk_line** %9, align 8
  %61 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %60, i32 0, i32 0
  %62 = call i32 @atomic_read(i32* %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %59, %56
  %66 = phi i1 [ true, %56 ], [ %64, %59 ]
  %67 = zext i1 %66 to i32
  %68 = call i64 @likely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.pblk*, %struct.pblk** %5, align 8
  %72 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %73 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %10, align 8
  %74 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i64*, i64** %14, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @pblk_map_rq(%struct.pblk* %71, %struct.nvm_rq* %72, i32 %75, i64* %76, i32 %77, i32 0)
  store i32 %78, i32* %15, align 4
  br label %89

79:                                               ; preds = %65
  %80 = load %struct.pblk*, %struct.pblk** %5, align 8
  %81 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %82 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %10, align 8
  %83 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i64*, i64** %14, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.ppa_addr*, %struct.ppa_addr** %7, align 8
  %88 = call i32 @pblk_map_erase_rq(%struct.pblk* %80, %struct.nvm_rq* %81, i32 %84, i64* %85, i32 %86, %struct.ppa_addr* %87)
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %79, %70
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %52, %38
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.pblk_line* @pblk_line_get_erase(%struct.pblk*) #1

declare dso_local %struct.pblk_c_ctx* @nvm_rq_to_pdu(%struct.nvm_rq*) #1

declare dso_local i64* @kzalloc(i32, i32) #1

declare dso_local i32 @pblk_alloc_w_rq(%struct.pblk*, %struct.nvm_rq*, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pblk_map_rq(%struct.pblk*, %struct.nvm_rq*, i32, i64*, i32, i32) #1

declare dso_local i32 @pblk_map_erase_rq(%struct.pblk*, %struct.nvm_rq*, i32, i64*, i32, %struct.ppa_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
