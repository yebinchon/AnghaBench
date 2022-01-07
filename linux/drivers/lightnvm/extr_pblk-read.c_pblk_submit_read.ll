; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c_pblk_submit_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c_pblk_submit_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.TYPE_2__*, %struct.nvm_tgt_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.nvm_tgt_dev = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.bio = type { i32 }
%struct.pblk_g_ctx = type { %struct.bio*, i32, i32 }
%struct.nvm_rq = type { i32, i32, i32*, i32, %struct.bio*, i32 (%struct.nvm_rq*)*, %struct.pblk*, i32 }

@REQ_OP_READ = common dso_local global i32 0, align 4
@PBLK_READ = common dso_local global i32 0, align 4
@NVM_OP_PREAD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@pblk_bio_set = common dso_local global i32 0, align 4
@NR_PHY_IN_LOG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_submit_read(%struct.pblk* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.nvm_tgt_dev*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pblk_g_ctx*, align 8
  %11 = alloca %struct.nvm_rq*, align 8
  %12 = alloca %struct.bio*, align 8
  %13 = alloca %struct.bio*, align 8
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %14 = load %struct.pblk*, %struct.pblk** %3, align 8
  %15 = getelementptr inbounds %struct.pblk, %struct.pblk* %14, i32 0, i32 2
  %16 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %15, align 8
  store %struct.nvm_tgt_dev* %16, %struct.nvm_tgt_dev** %5, align 8
  %17 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %5, align 8
  %18 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %17, i32 0, i32 0
  %19 = load %struct.request_queue*, %struct.request_queue** %18, align 8
  store %struct.request_queue* %19, %struct.request_queue** %6, align 8
  %20 = load %struct.bio*, %struct.bio** %4, align 8
  %21 = call i32 @pblk_get_lba(%struct.bio* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.bio*, %struct.bio** %4, align 8
  %23 = call i32 @pblk_get_secs(%struct.bio* %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %25 = load i32, i32* @REQ_OP_READ, align 4
  %26 = load %struct.bio*, %struct.bio** %4, align 8
  %27 = call i32 @bio_sectors(%struct.bio* %26)
  %28 = load %struct.pblk*, %struct.pblk** %3, align 8
  %29 = getelementptr inbounds %struct.pblk, %struct.pblk* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @generic_start_io_acct(%struct.request_queue* %24, i32 %25, i32 %27, i32* %31)
  %33 = load %struct.pblk*, %struct.pblk** %3, align 8
  %34 = load i32, i32* @PBLK_READ, align 4
  %35 = call %struct.nvm_rq* @pblk_alloc_rqd(%struct.pblk* %33, i32 %34)
  store %struct.nvm_rq* %35, %struct.nvm_rq** %11, align 8
  %36 = load i32, i32* @NVM_OP_PREAD, align 4
  %37 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %38 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %41 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.pblk*, %struct.pblk** %3, align 8
  %43 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %44 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %43, i32 0, i32 6
  store %struct.pblk* %42, %struct.pblk** %44, align 8
  %45 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %46 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %45, i32 0, i32 5
  store i32 (%struct.nvm_rq*)* @pblk_end_io_read, i32 (%struct.nvm_rq*)** %46, align 8
  %47 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %48 = call %struct.pblk_g_ctx* @nvm_rq_to_pdu(%struct.nvm_rq* %47)
  store %struct.pblk_g_ctx* %48, %struct.pblk_g_ctx** %10, align 8
  %49 = load i32, i32* @jiffies, align 4
  %50 = load %struct.pblk_g_ctx*, %struct.pblk_g_ctx** %10, align 8
  %51 = getelementptr inbounds %struct.pblk_g_ctx, %struct.pblk_g_ctx* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.pblk_g_ctx*, %struct.pblk_g_ctx** %10, align 8
  %54 = getelementptr inbounds %struct.pblk_g_ctx, %struct.pblk_g_ctx* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.pblk*, %struct.pblk** %3, align 8
  %56 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %57 = call i64 @pblk_alloc_rqd_meta(%struct.pblk* %55, %struct.nvm_rq* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %2
  %60 = load %struct.bio*, %struct.bio** %4, align 8
  %61 = call i32 @bio_io_error(%struct.bio* %60)
  %62 = load %struct.pblk*, %struct.pblk** %3, align 8
  %63 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %64 = load i32, i32* @PBLK_READ, align 4
  %65 = call i32 @pblk_free_rqd(%struct.pblk* %62, %struct.nvm_rq* %63, i32 %64)
  br label %163

66:                                               ; preds = %2
  %67 = load %struct.bio*, %struct.bio** %4, align 8
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.bio* @bio_clone_fast(%struct.bio* %67, i32 %68, i32* @pblk_bio_set)
  store %struct.bio* %69, %struct.bio** %12, align 8
  %70 = load i32, i32* %8, align 4
  %71 = icmp ugt i32 %70, 1
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.pblk*, %struct.pblk** %3, align 8
  %74 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %75 = load %struct.bio*, %struct.bio** %12, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @pblk_read_ppalist_rq(%struct.pblk* %73, %struct.nvm_rq* %74, %struct.bio* %75, i32 %76, i32* %9)
  store i32 %77, i32* %8, align 4
  br label %84

78:                                               ; preds = %66
  %79 = load %struct.pblk*, %struct.pblk** %3, align 8
  %80 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %81 = load %struct.bio*, %struct.bio** %12, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @pblk_read_rq(%struct.pblk* %79, %struct.nvm_rq* %80, %struct.bio* %81, i32 %82, i32* %9)
  br label %84

84:                                               ; preds = %78, %72
  br label %85

85:                                               ; preds = %143, %84
  %86 = load %struct.bio*, %struct.bio** %4, align 8
  %87 = load %struct.pblk_g_ctx*, %struct.pblk_g_ctx** %10, align 8
  %88 = getelementptr inbounds %struct.pblk_g_ctx, %struct.pblk_g_ctx* %87, i32 0, i32 0
  store %struct.bio* %86, %struct.bio** %88, align 8
  %89 = load %struct.bio*, %struct.bio** %12, align 8
  %90 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %91 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %90, i32 0, i32 4
  store %struct.bio* %89, %struct.bio** %91, align 8
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %85
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %97 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %94
  %101 = load %struct.bio*, %struct.bio** %4, align 8
  %102 = call i32 @pblk_end_user_read(%struct.bio* %101, i32 0)
  %103 = load %struct.pblk*, %struct.pblk** %3, align 8
  %104 = getelementptr inbounds %struct.pblk, %struct.pblk* %103, i32 0, i32 0
  %105 = call i32 @atomic_inc(i32* %104)
  %106 = load %struct.pblk*, %struct.pblk** %3, align 8
  %107 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %108 = call i32 @__pblk_end_io_read(%struct.pblk* %106, %struct.nvm_rq* %107, i32 0)
  br label %163

109:                                              ; preds = %94, %85
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %112 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %110, %113
  br i1 %114, label %115, label %149

115:                                              ; preds = %109
  %116 = load %struct.bio*, %struct.bio** %4, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @NR_PHY_IN_LOG, align 4
  %119 = mul i32 %117, %118
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call %struct.bio* @bio_split(%struct.bio* %116, i32 %119, i32 %120, i32* @pblk_bio_set)
  store %struct.bio* %121, %struct.bio** %13, align 8
  %122 = load %struct.bio*, %struct.bio** %13, align 8
  %123 = load %struct.bio*, %struct.bio** %4, align 8
  %124 = call i32 @bio_chain(%struct.bio* %122, %struct.bio* %123)
  %125 = load %struct.bio*, %struct.bio** %4, align 8
  %126 = call i32 @generic_make_request(%struct.bio* %125)
  %127 = load %struct.bio*, %struct.bio** %13, align 8
  store %struct.bio* %127, %struct.bio** %4, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %130 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %132 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %143

135:                                              ; preds = %115
  %136 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %137 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %142 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %135, %115
  %144 = load %struct.bio*, %struct.bio** %12, align 8
  %145 = call i32 @bio_put(%struct.bio* %144)
  %146 = load %struct.bio*, %struct.bio** %4, align 8
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call %struct.bio* @bio_clone_fast(%struct.bio* %146, i32 %147, i32* @pblk_bio_set)
  store %struct.bio* %148, %struct.bio** %12, align 8
  br label %85

149:                                              ; preds = %109
  %150 = load %struct.pblk*, %struct.pblk** %3, align 8
  %151 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %152 = call i64 @pblk_submit_io(%struct.pblk* %150, %struct.nvm_rq* %151, i32* null)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = load i32, i32* @ENODEV, align 4
  %156 = sub nsw i32 0, %155
  %157 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %158 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load %struct.nvm_rq*, %struct.nvm_rq** %11, align 8
  %160 = call i32 @pblk_end_io_read(%struct.nvm_rq* %159)
  br label %161

161:                                              ; preds = %154, %149
  br label %162

162:                                              ; preds = %161
  br label %163

163:                                              ; preds = %59, %162, %100
  ret void
}

declare dso_local i32 @pblk_get_lba(%struct.bio*) #1

declare dso_local i32 @pblk_get_secs(%struct.bio*) #1

declare dso_local i32 @generic_start_io_acct(%struct.request_queue*, i32, i32, i32*) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local %struct.nvm_rq* @pblk_alloc_rqd(%struct.pblk*, i32) #1

declare dso_local i32 @pblk_end_io_read(%struct.nvm_rq*) #1

declare dso_local %struct.pblk_g_ctx* @nvm_rq_to_pdu(%struct.nvm_rq*) #1

declare dso_local i64 @pblk_alloc_rqd_meta(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i32 @pblk_free_rqd(%struct.pblk*, %struct.nvm_rq*, i32) #1

declare dso_local %struct.bio* @bio_clone_fast(%struct.bio*, i32, i32*) #1

declare dso_local i32 @pblk_read_ppalist_rq(%struct.pblk*, %struct.nvm_rq*, %struct.bio*, i32, i32*) #1

declare dso_local i32 @pblk_read_rq(%struct.pblk*, %struct.nvm_rq*, %struct.bio*, i32, i32*) #1

declare dso_local i32 @pblk_end_user_read(%struct.bio*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @__pblk_end_io_read(%struct.pblk*, %struct.nvm_rq*, i32) #1

declare dso_local %struct.bio* @bio_split(%struct.bio*, i32, i32, i32*) #1

declare dso_local i32 @bio_chain(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i64 @pblk_submit_io(%struct.pblk*, %struct.nvm_rq*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
