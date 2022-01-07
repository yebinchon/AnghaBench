; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_get_packed_meta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_get_packed_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.nvm_rq = type { i32, %struct.TYPE_4__*, i8* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_get_packed_meta(%struct.pblk* %0, %struct.nvm_rq* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.nvm_rq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %4, align 8
  %8 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %9 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.pblk*, %struct.pblk** %3, align 8
  %12 = call i64 @pblk_is_oob_meta_supported(%struct.pblk* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %17 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %22 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @page_to_virt(i32 %30)
  store i8* %31, i8** %6, align 8
  br label %32

32:                                               ; preds = %49, %15
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %35 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load %struct.pblk*, %struct.pblk** %3, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @pblk_get_meta(%struct.pblk* %39, i8* %40, i32 %41)
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = getelementptr i8, i8* %43, i64 %46
  %48 = call i32 @memcpy(i32 %42, i8* %47, i32 4)
  br label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %32

52:                                               ; preds = %14, %32
  ret void
}

declare dso_local i64 @pblk_is_oob_meta_supported(%struct.pblk*) #1

declare dso_local i8* @page_to_virt(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @pblk_get_meta(%struct.pblk*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
