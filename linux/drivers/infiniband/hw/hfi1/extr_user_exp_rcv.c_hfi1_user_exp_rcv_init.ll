; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_hfi1_user_exp_rcv_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_hfi1_user_exp_rcv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_filedata = type { i32, i32, i32, i32, i32, i32*, i8*, i64, i32 }
%struct.hfi1_ctxtdata = type { i32, i32, i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TID_UNMAP = common dso_local global i32 0, align 4
@tid_rb_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed MMU notifier registration %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_user_exp_rcv_init(%struct.hfi1_filedata* %0, %struct.hfi1_ctxtdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_filedata*, align 8
  %5 = alloca %struct.hfi1_ctxtdata*, align 8
  %6 = alloca %struct.hfi1_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hfi1_filedata* %0, %struct.hfi1_filedata** %4, align 8
  store %struct.hfi1_ctxtdata* %1, %struct.hfi1_ctxtdata** %5, align 8
  %9 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %10 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %9, i32 0, i32 3
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  store %struct.hfi1_devdata* %11, %struct.hfi1_devdata** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %13 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %12, i32 0, i32 2
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %16 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %15, i32 0, i32 8
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %19 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kcalloc(i32 %20, i32 8, i32 %21)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %25 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %24, i32 0, i32 5
  store i32* %23, i32** %25, align 8
  %26 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %27 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %138

33:                                               ; preds = %2
  %34 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %35 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TID_UNMAP, align 4
  %38 = call i32 @HFI1_CAP_UGET_MASK(i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %83, label %40

40:                                               ; preds = %33
  %41 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %42 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %41, i32 0, i32 7
  store i64 0, i64* %42, align 8
  %43 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %44 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @kcalloc(i32 %45, i32 1, i32 %46)
  %48 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %49 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %51 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %50, i32 0, i32 6
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %40
  %55 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %56 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @kfree(i32* %57)
  %59 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %60 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %59, i32 0, i32 5
  store i32* null, i32** %60, align 8
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %138

63:                                               ; preds = %40
  %64 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %65 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %66 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %69 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %74 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %73, i32 0, i32 3
  %75 = call i32 @hfi1_mmu_rb_register(%struct.hfi1_filedata* %64, i32 %67, i32* @tid_rb_ops, i32 %72, i32* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %63
  %79 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @dd_dev_info(%struct.hfi1_devdata* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %80)
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %78, %63
  br label %83

83:                                               ; preds = %82, %33
  %84 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %85 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %84, i32 0, i32 2
  %86 = call i32 @spin_lock(i32* %85)
  %87 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %88 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %127

91:                                               ; preds = %83
  %92 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %93 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %127

96:                                               ; preds = %91
  %97 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %98 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %101 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %99, %102
  %104 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %105 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %107 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %110 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = srem i32 %108, %111
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %96
  %116 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %117 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %123 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %121, %115, %96
  br label %133

127:                                              ; preds = %91, %83
  %128 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %129 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %132 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %127, %126
  %134 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %135 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %134, i32 0, i32 2
  %136 = call i32 @spin_unlock(i32* %135)
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %133, %54, %30
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @HFI1_CAP_UGET_MASK(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @hfi1_mmu_rb_register(%struct.hfi1_filedata*, i32, i32*, i32, i32*) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
