; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_sync_page_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_sync_page_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i64, i64, i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.page = type { i32 }
%struct.bio = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@MaxSector = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sync_page_io(%struct.md_rdev* %0, i64 %1, i32 %2, %struct.page* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.md_rdev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bio*, align 8
  %16 = alloca i32, align 4
  store %struct.md_rdev* %0, %struct.md_rdev** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.page* %3, %struct.page** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %18 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call %struct.bio* @md_bio_alloc_sync(%struct.TYPE_4__* %19)
  store %struct.bio* %20, %struct.bio** %15, align 8
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %7
  %24 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %25 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.bio*, %struct.bio** %15, align 8
  %30 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %31 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bio_set_dev(%struct.bio* %29, i32 %32)
  br label %40

34:                                               ; preds = %23, %7
  %35 = load %struct.bio*, %struct.bio** %15, align 8
  %36 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %37 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @bio_set_dev(%struct.bio* %35, i32 %38)
  br label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.bio*, %struct.bio** %15, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @bio_set_op_attrs(%struct.bio* %41, i32 %42, i32 %43)
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %50 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load %struct.bio*, %struct.bio** %15, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  br label %98

56:                                               ; preds = %40
  %57 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %58 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MaxSector, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %56
  %65 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %66 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %72 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %71, i32 0, i32 3
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %70, %75
  %77 = zext i1 %76 to i32
  %78 = icmp eq i32 %69, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %64
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %82 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = load %struct.bio*, %struct.bio** %15, align 8
  %86 = getelementptr inbounds %struct.bio, %struct.bio* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  br label %97

88:                                               ; preds = %64, %56
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %91 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = load %struct.bio*, %struct.bio** %15, align 8
  %95 = getelementptr inbounds %struct.bio, %struct.bio* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  br label %97

97:                                               ; preds = %88, %79
  br label %98

98:                                               ; preds = %97, %47
  %99 = load %struct.bio*, %struct.bio** %15, align 8
  %100 = load %struct.page*, %struct.page** %11, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @bio_add_page(%struct.bio* %99, %struct.page* %100, i32 %101, i32 0)
  %103 = load %struct.bio*, %struct.bio** %15, align 8
  %104 = call i32 @submit_bio_wait(%struct.bio* %103)
  %105 = load %struct.bio*, %struct.bio** %15, align 8
  %106 = getelementptr inbounds %struct.bio, %struct.bio* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %16, align 4
  %111 = load %struct.bio*, %struct.bio** %15, align 8
  %112 = call i32 @bio_put(%struct.bio* %111)
  %113 = load i32, i32* %16, align 4
  ret i32 %113
}

declare dso_local %struct.bio* @md_bio_alloc_sync(%struct.TYPE_4__*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @submit_bio_wait(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
