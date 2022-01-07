; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c_pblk_submit_read_gc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c_pblk_submit_read_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32, i32, i32, i32 }
%struct.pblk_gc_rq = type { i32, i32, i32*, i32, i32*, i32 }
%struct.nvm_rq = type { i32, i64, i32, i32*, i32 }

@NVM_IO_OK = common dso_local global i32 0, align 4
@NVM_OP_PREAD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_submit_read_gc(%struct.pblk* %0, %struct.pblk_gc_rq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_gc_rq*, align 8
  %6 = alloca %struct.nvm_rq, align 8
  %7 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_gc_rq* %1, %struct.pblk_gc_rq** %5, align 8
  %8 = load i32, i32* @NVM_IO_OK, align 4
  store i32 %8, i32* %7, align 4
  %9 = call i32 @memset(%struct.nvm_rq* %6, i32 0, i32 40)
  %10 = load %struct.pblk*, %struct.pblk** %4, align 8
  %11 = call i32 @pblk_alloc_rqd_meta(%struct.pblk* %10, %struct.nvm_rq* %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %117

16:                                               ; preds = %2
  %17 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %5, align 8
  %18 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %49

21:                                               ; preds = %16
  %22 = load %struct.pblk*, %struct.pblk** %4, align 8
  %23 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %5, align 8
  %24 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %5, align 8
  %27 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %5, align 8
  %30 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %5, align 8
  %33 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @read_ppalist_rq_gc(%struct.pblk* %22, %struct.nvm_rq* %6, i32 %25, i32* %28, i32* %31, i32 %34)
  %36 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %5, align 8
  %37 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %5, align 8
  %39 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %48

42:                                               ; preds = %21
  %43 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %6, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %6, i32 0, i32 4
  store i32 %46, i32* %47, align 8
  br label %48

48:                                               ; preds = %42, %21
  br label %67

49:                                               ; preds = %16
  %50 = load %struct.pblk*, %struct.pblk** %4, align 8
  %51 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %5, align 8
  %52 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %5, align 8
  %55 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %5, align 8
  %60 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @read_rq_gc(%struct.pblk* %50, %struct.nvm_rq* %6, i32 %53, i32 %58, i32 %63)
  %65 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %5, align 8
  %66 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %49, %48
  %68 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %5, align 8
  %69 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %109

73:                                               ; preds = %67
  %74 = load i32, i32* @NVM_OP_PREAD, align 4
  %75 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %6, i32 0, i32 2
  store i32 %74, i32* %75, align 8
  %76 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %5, align 8
  %77 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %6, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = load %struct.pblk*, %struct.pblk** %4, align 8
  %81 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %5, align 8
  %82 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @pblk_submit_io_sync(%struct.pblk* %80, %struct.nvm_rq* %6, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %73
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %7, align 4
  br label %113

89:                                               ; preds = %73
  %90 = load %struct.pblk*, %struct.pblk** %4, align 8
  %91 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %5, align 8
  %92 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %5, align 8
  %95 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @pblk_read_check_rand(%struct.pblk* %90, %struct.nvm_rq* %6, i32* %93, i32 %96)
  %98 = load %struct.pblk*, %struct.pblk** %4, align 8
  %99 = getelementptr inbounds %struct.pblk, %struct.pblk* %98, i32 0, i32 4
  %100 = call i32 @atomic_dec(i32* %99)
  %101 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %6, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %89
  %105 = load %struct.pblk*, %struct.pblk** %4, align 8
  %106 = getelementptr inbounds %struct.pblk, %struct.pblk* %105, i32 0, i32 3
  %107 = call i32 @atomic_long_inc(i32* %106)
  br label %108

108:                                              ; preds = %104, %89
  br label %109

109:                                              ; preds = %108, %72
  %110 = load %struct.pblk*, %struct.pblk** %4, align 8
  %111 = call i32 @pblk_free_rqd_meta(%struct.pblk* %110, %struct.nvm_rq* %6)
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %3, align 4
  br label %117

113:                                              ; preds = %86
  %114 = load %struct.pblk*, %struct.pblk** %4, align 8
  %115 = call i32 @pblk_free_rqd_meta(%struct.pblk* %114, %struct.nvm_rq* %6)
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %109, %14
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @memset(%struct.nvm_rq*, i32, i32) #1

declare dso_local i32 @pblk_alloc_rqd_meta(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local i32 @read_ppalist_rq_gc(%struct.pblk*, %struct.nvm_rq*, i32, i32*, i32*, i32) #1

declare dso_local i32 @read_rq_gc(%struct.pblk*, %struct.nvm_rq*, i32, i32, i32) #1

declare dso_local i64 @pblk_submit_io_sync(%struct.pblk*, %struct.nvm_rq*, i32) #1

declare dso_local i32 @pblk_read_check_rand(%struct.pblk*, %struct.nvm_rq*, i32*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @pblk_free_rqd_meta(%struct.pblk*, %struct.nvm_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
