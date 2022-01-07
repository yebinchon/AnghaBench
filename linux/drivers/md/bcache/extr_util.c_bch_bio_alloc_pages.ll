; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_util.c_bch_bio_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_util.c_bch_bio_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.bio_vec* }
%struct.bio_vec = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bch_bio_alloc_pages(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio_vec*, align 8
  store %struct.bio* %0, %struct.bio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.bio*, %struct.bio** %4, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 1
  %10 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  store %struct.bio_vec* %10, %struct.bio_vec** %7, align 8
  br label %11

11:                                               ; preds = %43, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @alloc_page(i32 %18)
  %20 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %21 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %23 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %34, %26
  %28 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %29 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %28, i32 -1
  store %struct.bio_vec* %29, %struct.bio_vec** %7, align 8
  %30 = load %struct.bio*, %struct.bio** %4, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 1
  %32 = load %struct.bio_vec*, %struct.bio_vec** %31, align 8
  %33 = icmp uge %struct.bio_vec* %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %36 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__free_page(i32 %37)
  br label %27

39:                                               ; preds = %27
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %49

42:                                               ; preds = %17
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %45 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %44, i32 1
  store %struct.bio_vec* %45, %struct.bio_vec** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %11

48:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %39
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @alloc_page(i32) #1

declare dso_local i32 @__free_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
