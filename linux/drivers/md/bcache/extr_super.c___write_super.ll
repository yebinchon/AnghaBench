; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c___write_super.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c___write_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_sb = type { i32, i32, i8*, i8*, i8*, i32, i8**, i32, i32, i32, i32, i8* }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SB_SECTOR = common dso_local global i32 0, align 4
@SB_SIZE = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@SB_LABEL_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ver %llu, flags %llu, seq %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_sb*, %struct.bio*)* @__write_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__write_super(%struct.cache_sb* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.cache_sb*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.cache_sb*, align 8
  %6 = alloca i32, align 4
  store %struct.cache_sb* %0, %struct.cache_sb** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = load %struct.bio*, %struct.bio** %4, align 8
  %8 = call i32 @bio_first_page_all(%struct.bio* %7)
  %9 = call %struct.cache_sb* @page_address(i32 %8)
  store %struct.cache_sb* %9, %struct.cache_sb** %5, align 8
  %10 = load i32, i32* @SB_SECTOR, align 4
  %11 = load %struct.bio*, %struct.bio** %4, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @SB_SIZE, align 4
  %15 = load %struct.bio*, %struct.bio** %4, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load %struct.bio*, %struct.bio** %4, align 8
  %19 = load i32, i32* @REQ_OP_WRITE, align 4
  %20 = load i32, i32* @REQ_SYNC, align 4
  %21 = load i32, i32* @REQ_META, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @bio_set_op_attrs(%struct.bio* %18, i32 %19, i32 %22)
  %24 = load %struct.bio*, %struct.bio** %4, align 8
  %25 = call i32 @bch_bio_map(%struct.bio* %24, i32* null)
  %26 = load %struct.cache_sb*, %struct.cache_sb** %3, align 8
  %27 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %26, i32 0, i32 11
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @cpu_to_le64(i8* %28)
  %30 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %31 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %30, i32 0, i32 11
  store i8* %29, i8** %31, align 8
  %32 = load %struct.cache_sb*, %struct.cache_sb** %3, align 8
  %33 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %32, i32 0, i32 4
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @cpu_to_le64(i8* %34)
  %36 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %37 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %39 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cache_sb*, %struct.cache_sb** %3, align 8
  %42 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32 %40, i32 %43, i32 16)
  %45 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %46 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.cache_sb*, %struct.cache_sb** %3, align 8
  %49 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @memcpy(i32 %47, i32 %50, i32 16)
  %52 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %53 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cache_sb*, %struct.cache_sb** %3, align 8
  %56 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SB_LABEL_SIZE, align 4
  %59 = call i32 @memcpy(i32 %54, i32 %57, i32 %58)
  %60 = load %struct.cache_sb*, %struct.cache_sb** %3, align 8
  %61 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @cpu_to_le64(i8* %62)
  %64 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %65 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.cache_sb*, %struct.cache_sb** %3, align 8
  %67 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @cpu_to_le64(i8* %68)
  %70 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %71 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.cache_sb*, %struct.cache_sb** %3, align 8
  %73 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @cpu_to_le32(i32 %74)
  %76 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %77 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 8
  %78 = load %struct.cache_sb*, %struct.cache_sb** %3, align 8
  %79 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @cpu_to_le16(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %84 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.cache_sb*, %struct.cache_sb** %3, align 8
  %86 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @cpu_to_le16(i32 %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %91 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %113, %2
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.cache_sb*, %struct.cache_sb** %3, align 8
  %95 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ult i32 %93, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %92
  %99 = load %struct.cache_sb*, %struct.cache_sb** %3, align 8
  %100 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %99, i32 0, i32 6
  %101 = load i8**, i8*** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i8* @cpu_to_le64(i8* %105)
  %107 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %108 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %107, i32 0, i32 6
  %109 = load i8**, i8*** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  store i8* %106, i8** %112, align 8
  br label %113

113:                                              ; preds = %98
  %114 = load i32, i32* %6, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %92

116:                                              ; preds = %92
  %117 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %118 = call i32 @csum_set(%struct.cache_sb* %117)
  %119 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %120 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 8
  %121 = load %struct.cache_sb*, %struct.cache_sb** %3, align 8
  %122 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %121, i32 0, i32 4
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.cache_sb*, %struct.cache_sb** %3, align 8
  %125 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.cache_sb*, %struct.cache_sb** %3, align 8
  %128 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %123, i8* %126, i8* %129)
  %131 = load %struct.bio*, %struct.bio** %4, align 8
  %132 = call i32 @submit_bio(%struct.bio* %131)
  ret void
}

declare dso_local %struct.cache_sb* @page_address(i32) #1

declare dso_local i32 @bio_first_page_all(%struct.bio*) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @bch_bio_map(%struct.bio*, i32*) #1

declare dso_local i8* @cpu_to_le64(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @csum_set(%struct.cache_sb*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
