; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-map.c_pblk_map_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-map.c_pblk_map_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.nvm_rq = type { i32 }
%struct.ppa_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_map_rq(%struct.pblk* %0, %struct.nvm_rq* %1, i32 %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pblk*, align 8
  %9 = alloca %struct.nvm_rq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ppa_addr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %8, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load %struct.pblk*, %struct.pblk** %8, align 8
  %22 = load %struct.nvm_rq*, %struct.nvm_rq** %9, align 8
  %23 = call i8* @pblk_get_meta_for_writes(%struct.pblk* %21, %struct.nvm_rq* %22)
  store i8* %23, i8** %14, align 8
  %24 = load %struct.nvm_rq*, %struct.nvm_rq** %9, align 8
  %25 = call %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq* %24)
  store %struct.ppa_addr* %25, %struct.ppa_addr** %16, align 8
  %26 = load %struct.pblk*, %struct.pblk** %8, align 8
  %27 = getelementptr inbounds %struct.pblk, %struct.pblk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %19, align 4
  br label %30

30:                                               ; preds = %71, %6
  %31 = load i32, i32* %19, align 4
  %32 = load %struct.nvm_rq*, %struct.nvm_rq** %9, align 8
  %33 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %30
  %37 = load i32, i32* %19, align 4
  %38 = load i32, i32* %18, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* %12, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %18, align 4
  %45 = urem i32 %43, %44
  br label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %18, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %45, %42 ], [ %47, %46 ]
  store i32 %49, i32* %17, align 4
  %50 = load %struct.pblk*, %struct.pblk** %8, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load i32, i32* %19, align 4
  %53 = call i8* @pblk_get_meta(%struct.pblk* %50, i8* %51, i32 %52)
  store i8* %53, i8** %15, align 8
  %54 = load %struct.pblk*, %struct.pblk** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %19, align 4
  %57 = add i32 %55, %56
  %58 = load %struct.ppa_addr*, %struct.ppa_addr** %16, align 8
  %59 = load i32, i32* %19, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %58, i64 %60
  %62 = load i64*, i64** %11, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @pblk_map_page_data(%struct.pblk* %54, i32 %57, %struct.ppa_addr* %61, i64* %62, i8* %63, i32 %64)
  store i32 %65, i32* %20, align 4
  %66 = load i32, i32* %20, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %48
  %69 = load i32, i32* %20, align 4
  store i32 %69, i32* %7, align 4
  br label %76

70:                                               ; preds = %48
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %19, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %19, align 4
  br label %30

75:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %75, %68
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i8* @pblk_get_meta_for_writes(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq*) #1

declare dso_local i8* @pblk_get_meta(%struct.pblk*, i8*, i32) #1

declare dso_local i32 @pblk_map_page_data(%struct.pblk*, i32, %struct.ppa_addr*, i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
