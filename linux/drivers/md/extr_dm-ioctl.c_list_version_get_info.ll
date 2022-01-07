; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_list_version_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_list_version_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_type = type { i32, i32* }
%struct.vers_iter = type { i8*, %struct.TYPE_2__*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64, i32* }

@DM_BUFFER_FULL_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.target_type*, i8*)* @list_version_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_version_get_info(%struct.target_type* %0, i8* %1) #0 {
  %3 = alloca %struct.target_type*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vers_iter*, align 8
  store %struct.target_type* %0, %struct.target_type** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.vers_iter*
  store %struct.vers_iter* %7, %struct.vers_iter** %5, align 8
  %8 = load %struct.vers_iter*, %struct.vers_iter** %5, align 8
  %9 = getelementptr inbounds %struct.vers_iter, %struct.vers_iter* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = bitcast %struct.TYPE_2__* %10 to i8*
  %12 = getelementptr inbounds i8, i8* %11, i64 8
  %13 = load %struct.target_type*, %struct.target_type** %3, align 8
  %14 = getelementptr inbounds %struct.target_type, %struct.target_type* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @strlen(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %12, i64 %17
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load %struct.vers_iter*, %struct.vers_iter** %5, align 8
  %21 = getelementptr inbounds %struct.vers_iter, %struct.vers_iter* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ugt i8* %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @DM_BUFFER_FULL_FLAG, align 4
  %26 = load %struct.vers_iter*, %struct.vers_iter** %5, align 8
  %27 = getelementptr inbounds %struct.vers_iter, %struct.vers_iter* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  br label %116

28:                                               ; preds = %2
  %29 = load %struct.vers_iter*, %struct.vers_iter** %5, align 8
  %30 = getelementptr inbounds %struct.vers_iter, %struct.vers_iter* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load %struct.vers_iter*, %struct.vers_iter** %5, align 8
  %35 = getelementptr inbounds %struct.vers_iter, %struct.vers_iter* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = bitcast %struct.TYPE_2__* %36 to i8*
  %38 = load %struct.vers_iter*, %struct.vers_iter** %5, align 8
  %39 = getelementptr inbounds %struct.vers_iter, %struct.vers_iter* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = bitcast %struct.TYPE_2__* %40 to i8*
  %42 = ptrtoint i8* %37 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = load %struct.vers_iter*, %struct.vers_iter** %5, align 8
  %46 = getelementptr inbounds %struct.vers_iter, %struct.vers_iter* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i64 %44, i64* %48, align 8
  br label %49

49:                                               ; preds = %33, %28
  %50 = load %struct.target_type*, %struct.target_type** %3, align 8
  %51 = getelementptr inbounds %struct.target_type, %struct.target_type* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vers_iter*, %struct.vers_iter** %5, align 8
  %56 = getelementptr inbounds %struct.vers_iter, %struct.vers_iter* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %54, i32* %60, align 4
  %61 = load %struct.target_type*, %struct.target_type** %3, align 8
  %62 = getelementptr inbounds %struct.target_type, %struct.target_type* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.vers_iter*, %struct.vers_iter** %5, align 8
  %67 = getelementptr inbounds %struct.vers_iter, %struct.vers_iter* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 %65, i32* %71, align 4
  %72 = load %struct.target_type*, %struct.target_type** %3, align 8
  %73 = getelementptr inbounds %struct.target_type, %struct.target_type* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.vers_iter*, %struct.vers_iter** %5, align 8
  %78 = getelementptr inbounds %struct.vers_iter, %struct.vers_iter* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 %76, i32* %82, align 4
  %83 = load %struct.vers_iter*, %struct.vers_iter** %5, align 8
  %84 = getelementptr inbounds %struct.vers_iter, %struct.vers_iter* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.vers_iter*, %struct.vers_iter** %5, align 8
  %88 = getelementptr inbounds %struct.vers_iter, %struct.vers_iter* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.target_type*, %struct.target_type** %3, align 8
  %93 = getelementptr inbounds %struct.target_type, %struct.target_type* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @strcpy(i32 %91, i32 %94)
  %96 = load %struct.vers_iter*, %struct.vers_iter** %5, align 8
  %97 = getelementptr inbounds %struct.vers_iter, %struct.vers_iter* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load %struct.vers_iter*, %struct.vers_iter** %5, align 8
  %100 = getelementptr inbounds %struct.vers_iter, %struct.vers_iter* %99, i32 0, i32 2
  store %struct.TYPE_2__* %98, %struct.TYPE_2__** %100, align 8
  %101 = load %struct.vers_iter*, %struct.vers_iter** %5, align 8
  %102 = getelementptr inbounds %struct.vers_iter, %struct.vers_iter* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 1
  store %struct.TYPE_2__* %104, %struct.TYPE_2__** %102, align 8
  %105 = bitcast %struct.TYPE_2__* %104 to i8*
  %106 = load %struct.target_type*, %struct.target_type** %3, align 8
  %107 = getelementptr inbounds %struct.target_type, %struct.target_type* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @strlen(i32 %108)
  %110 = sext i32 %109 to i64
  %111 = getelementptr i8, i8* %105, i64 %110
  %112 = getelementptr i8, i8* %111, i64 1
  %113 = call %struct.TYPE_2__* @align_ptr(i8* %112)
  %114 = load %struct.vers_iter*, %struct.vers_iter** %5, align 8
  %115 = getelementptr inbounds %struct.vers_iter, %struct.vers_iter* %114, i32 0, i32 1
  store %struct.TYPE_2__* %113, %struct.TYPE_2__** %115, align 8
  br label %116

116:                                              ; preds = %49, %24
  ret void
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local %struct.TYPE_2__* @align_ptr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
