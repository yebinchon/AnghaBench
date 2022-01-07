; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_rwb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_rwb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.nvm_tgt_dev* }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32, i32, i32, i32 }

@write_buffer_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*)* @pblk_rwb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_rwb_init(%struct.pblk* %0) #0 {
  %2 = alloca %struct.pblk*, align 8
  %3 = alloca %struct.nvm_tgt_dev*, align 8
  %4 = alloca %struct.nvm_geo*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %2, align 8
  %8 = load %struct.pblk*, %struct.pblk** %2, align 8
  %9 = getelementptr inbounds %struct.pblk, %struct.pblk* %8, i32 0, i32 1
  %10 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %9, align 8
  store %struct.nvm_tgt_dev* %10, %struct.nvm_tgt_dev** %3, align 8
  %11 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %3, align 8
  %12 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %11, i32 0, i32 0
  store %struct.nvm_geo* %12, %struct.nvm_geo** %4, align 8
  %13 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %14 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %17 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %21 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %24 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @max(i32 %22, i32 %25)
  %27 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %28 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %32 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @write_buffer_size, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load i32, i32* @write_buffer_size, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @write_buffer_size, align 4
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %5, align 8
  br label %47

44:                                               ; preds = %37, %1
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.pblk*, %struct.pblk** %2, align 8
  %49 = getelementptr inbounds %struct.pblk, %struct.pblk* %48, i32 0, i32 0
  %50 = load i64, i64* %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %53 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pblk_rb_init(i32* %49, i64 %50, i32 %51, i32 %54)
  ret i32 %55
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @pblk_rb_init(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
