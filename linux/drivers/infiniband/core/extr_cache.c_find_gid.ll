; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_find_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_find_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_gid_table = type { i32, %struct.ib_gid_table_entry** }
%struct.ib_gid_table_entry = type { %struct.ib_gid_attr }
%struct.ib_gid_attr = type { i64, i64, i32 }
%union.ib_gid = type { i32 }

@GID_ATTR_FIND_MASK_GID_TYPE = common dso_local global i64 0, align 8
@GID_ATTR_FIND_MASK_GID = common dso_local global i64 0, align 8
@GID_ATTR_FIND_MASK_NETDEV = common dso_local global i64 0, align 8
@GID_ATTR_FIND_MASK_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_gid_table*, %union.ib_gid*, %struct.ib_gid_attr*, i32, i64, i32*)* @find_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_gid(%struct.ib_gid_table* %0, %union.ib_gid* %1, %struct.ib_gid_attr* %2, i32 %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.ib_gid_table*, align 8
  %8 = alloca %union.ib_gid*, align 8
  %9 = alloca %struct.ib_gid_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ib_gid_table_entry*, align 8
  %17 = alloca %struct.ib_gid_attr*, align 8
  %18 = alloca i32, align 4
  store %struct.ib_gid_table* %0, %struct.ib_gid_table** %7, align 8
  store %union.ib_gid* %1, %union.ib_gid** %8, align 8
  store %struct.ib_gid_attr* %2, %struct.ib_gid_attr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %19 = load i32*, i32** %12, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 -1, i32 0
  store i32 %22, i32* %15, align 4
  br label %23

23:                                               ; preds = %132, %131, %119, %105, %92, %76, %72, %6
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.ib_gid_table*, %struct.ib_gid_table** %7, align 8
  %26 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %33, 0
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ true, %29 ], [ %34, %32 ]
  br label %37

37:                                               ; preds = %35, %23
  %38 = phi i1 [ false, %23 ], [ %36, %35 ]
  br i1 %38, label %39, label %134

39:                                               ; preds = %37
  %40 = load %struct.ib_gid_table*, %struct.ib_gid_table** %7, align 8
  %41 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %40, i32 0, i32 1
  %42 = load %struct.ib_gid_table_entry**, %struct.ib_gid_table_entry*** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %42, i64 %44
  %46 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %45, align 8
  store %struct.ib_gid_table_entry* %46, %struct.ib_gid_table_entry** %16, align 8
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %68

52:                                               ; preds = %39
  %53 = load i32, i32* %15, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %16, align 8
  %57 = call i64 @is_gid_entry_free(%struct.ib_gid_table_entry* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.ib_gid_table*, %struct.ib_gid_table** %7, align 8
  %62 = load i32, i32* %18, align 4
  %63 = call i32 @is_gid_index_default(%struct.ib_gid_table* %61, i32 %62)
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %18, align 4
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %65, %59, %55
  br label %68

68:                                               ; preds = %67, %52, %39
  %69 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %16, align 8
  %70 = call i32 @is_gid_entry_valid(%struct.ib_gid_table_entry* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  br label %23

73:                                               ; preds = %68
  %74 = load i32, i32* %14, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %23

77:                                               ; preds = %73
  %78 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %16, align 8
  %79 = getelementptr inbounds %struct.ib_gid_table_entry, %struct.ib_gid_table_entry* %78, i32 0, i32 0
  store %struct.ib_gid_attr* %79, %struct.ib_gid_attr** %17, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* @GID_ATTR_FIND_MASK_GID_TYPE, align 8
  %82 = and i64 %80, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %17, align 8
  %86 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %9, align 8
  %89 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %23

93:                                               ; preds = %84, %77
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* @GID_ATTR_FIND_MASK_GID, align 8
  %96 = and i64 %94, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %100 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %16, align 8
  %101 = getelementptr inbounds %struct.ib_gid_table_entry, %struct.ib_gid_table_entry* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %101, i32 0, i32 2
  %103 = call i64 @memcmp(%union.ib_gid* %99, i32* %102, i32 4)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %23

106:                                              ; preds = %98, %93
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* @GID_ATTR_FIND_MASK_NETDEV, align 8
  %109 = and i64 %107, %108
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %106
  %112 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %17, align 8
  %113 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %9, align 8
  %116 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %23

120:                                              ; preds = %111, %106
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* @GID_ATTR_FIND_MASK_DEFAULT, align 8
  %123 = and i64 %121, %122
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load %struct.ib_gid_table*, %struct.ib_gid_table** %7, align 8
  %127 = load i32, i32* %18, align 4
  %128 = call i32 @is_gid_index_default(%struct.ib_gid_table* %126, i32 %127)
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %23

132:                                              ; preds = %125, %120
  %133 = load i32, i32* %18, align 4
  store i32 %133, i32* %14, align 4
  br label %23

134:                                              ; preds = %37
  %135 = load i32*, i32** %12, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %15, align 4
  %139 = load i32*, i32** %12, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* %14, align 4
  ret i32 %141
}

declare dso_local i64 @is_gid_entry_free(%struct.ib_gid_table_entry*) #1

declare dso_local i32 @is_gid_index_default(%struct.ib_gid_table*, i32) #1

declare dso_local i32 @is_gid_entry_valid(%struct.ib_gid_table_entry*) #1

declare dso_local i64 @memcmp(%union.ib_gid*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
