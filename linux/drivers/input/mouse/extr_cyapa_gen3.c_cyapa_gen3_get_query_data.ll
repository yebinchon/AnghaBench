; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_get_query_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_get_query_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@QUERY_DATA_SIZE = common dso_local global i32 0, align 4
@CYAPA_STATE_OP = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@CYAPA_CMD_GROUP_QUERY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CAPABILITY_BTN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*)* @cyapa_gen3_get_query_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen3_get_query_data(%struct.cyapa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  %8 = load i32, i32* @QUERY_DATA_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %13 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CYAPA_STATE_OP, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %125

20:                                               ; preds = %1
  %21 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %22 = load i32, i32* @CYAPA_CMD_GROUP_QUERY, align 4
  %23 = call i32 @cyapa_read_block(%struct.cyapa* %21, i32 %22, i32* %11)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @QUERY_DATA_SIZE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  br label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i32 [ %31, %30 ], [ %34, %32 ]
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %125

37:                                               ; preds = %20
  %38 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %39 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = getelementptr inbounds i32, i32* %11, i64 0
  %43 = call i32 @memcpy(i8* %41, i32* %42, i32 5)
  %44 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %45 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 5
  store i8 45, i8* %47, align 1
  %48 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %49 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 6
  %52 = getelementptr inbounds i32, i32* %11, i64 5
  %53 = call i32 @memcpy(i8* %51, i32* %52, i32 6)
  %54 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %55 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 12
  store i8 45, i8* %57, align 1
  %58 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %59 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 13
  %62 = getelementptr inbounds i32, i32* %11, i64 11
  %63 = call i32 @memcpy(i8* %61, i32* %62, i32 2)
  %64 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %65 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 15
  store i8 0, i8* %67, align 1
  %68 = getelementptr inbounds i32, i32* %11, i64 15
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %71 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = getelementptr inbounds i32, i32* %11, i64 16
  %73 = load i32, i32* %72, align 16
  %74 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %75 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = getelementptr inbounds i32, i32* %11, i64 19
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CAPABILITY_BTN_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %81 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = getelementptr inbounds i32, i32* %11, i64 20
  %83 = load i32, i32* %82, align 16
  %84 = and i32 %83, 15
  %85 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %86 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = getelementptr inbounds i32, i32* %11, i64 21
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 240
  %90 = shl i32 %89, 4
  %91 = getelementptr inbounds i32, i32* %11, i64 22
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %90, %92
  %94 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %95 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  %96 = getelementptr inbounds i32, i32* %11, i64 21
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 15
  %99 = shl i32 %98, 8
  %100 = getelementptr inbounds i32, i32* %11, i64 23
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %99, %101
  %103 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %104 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 4
  %105 = getelementptr inbounds i32, i32* %11, i64 24
  %106 = load i32, i32* %105, align 16
  %107 = and i32 %106, 240
  %108 = shl i32 %107, 4
  %109 = getelementptr inbounds i32, i32* %11, i64 25
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %108, %110
  %112 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %113 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %112, i32 0, i32 8
  store i32 %111, i32* %113, align 8
  %114 = getelementptr inbounds i32, i32* %11, i64 24
  %115 = load i32, i32* %114, align 16
  %116 = and i32 %115, 15
  %117 = shl i32 %116, 8
  %118 = getelementptr inbounds i32, i32* %11, i64 26
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %117, %119
  %121 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %122 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %121, i32 0, i32 9
  store i32 %120, i32* %122, align 4
  %123 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %124 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %123, i32 0, i32 10
  store i32 255, i32* %124, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %125

125:                                              ; preds = %37, %35, %17
  %126 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cyapa_read_block(%struct.cyapa*, i32, i32*) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
