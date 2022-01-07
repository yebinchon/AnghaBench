; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_narrow_write_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_narrow_write_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10bio = type { i32, i32, %struct.TYPE_7__*, %struct.mddev*, %struct.bio* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.mddev = type { i32, %struct.r10conf* }
%struct.r10conf = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.bio = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r10bio*, i32)* @narrow_write_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @narrow_write_error(%struct.r10bio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r10bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.mddev*, align 8
  %8 = alloca %struct.r10conf*, align 8
  %9 = alloca %struct.md_rdev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bio*, align 8
  %16 = alloca i32, align 4
  store %struct.r10bio* %0, %struct.r10bio** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %18 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %17, i32 0, i32 4
  %19 = load %struct.bio*, %struct.bio** %18, align 8
  store %struct.bio* %19, %struct.bio** %6, align 8
  %20 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %21 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %20, i32 0, i32 3
  %22 = load %struct.mddev*, %struct.mddev** %21, align 8
  store %struct.mddev* %22, %struct.mddev** %7, align 8
  %23 = load %struct.mddev*, %struct.mddev** %7, align 8
  %24 = getelementptr inbounds %struct.mddev, %struct.mddev* %23, i32 0, i32 1
  %25 = load %struct.r10conf*, %struct.r10conf** %24, align 8
  store %struct.r10conf* %25, %struct.r10conf** %8, align 8
  %26 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %27 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %30 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %29, i32 0, i32 2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.md_rdev*, %struct.md_rdev** %38, align 8
  store %struct.md_rdev* %39, %struct.md_rdev** %9, align 8
  %40 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %41 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %43 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %44 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %156

49:                                               ; preds = %2
  %50 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %51 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 1, %53
  %55 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %56 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bdev_logical_block_size(i32 %57)
  %59 = ashr i32 %58, 9
  %60 = call i32 @roundup(i32 %54, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %62 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %11, align 4
  %64 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %65 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, 1
  %71 = xor i32 %70, -1
  %72 = and i32 %68, %71
  %73 = load i32, i32* %11, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %144, %49
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %154

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %82, %78
  %85 = load %struct.bio*, %struct.bio** %6, align 8
  %86 = load i32, i32* @GFP_NOIO, align 4
  %87 = load %struct.mddev*, %struct.mddev** %7, align 8
  %88 = getelementptr inbounds %struct.mddev, %struct.mddev* %87, i32 0, i32 0
  %89 = call %struct.bio* @bio_clone_fast(%struct.bio* %85, i32 %86, i32* %88)
  store %struct.bio* %89, %struct.bio** %15, align 8
  %90 = load %struct.bio*, %struct.bio** %15, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.bio*, %struct.bio** %6, align 8
  %93 = getelementptr inbounds %struct.bio, %struct.bio* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %91, %95
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @bio_trim(%struct.bio* %90, i32 %96, i32 %97)
  %99 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %100 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %99, i32 0, i32 2
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %109 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %107, %110
  %112 = add nsw i32 %106, %111
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %115 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %116 = call i32 @choose_data_offset(%struct.r10bio* %114, %struct.md_rdev* %115)
  %117 = add nsw i32 %113, %116
  %118 = load %struct.bio*, %struct.bio** %15, align 8
  %119 = getelementptr inbounds %struct.bio, %struct.bio* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 4
  %121 = load %struct.bio*, %struct.bio** %15, align 8
  %122 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %123 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @bio_set_dev(%struct.bio* %121, i32 %124)
  %126 = load %struct.bio*, %struct.bio** %15, align 8
  %127 = load i32, i32* @REQ_OP_WRITE, align 4
  %128 = call i32 @bio_set_op_attrs(%struct.bio* %126, i32 %127, i32 0)
  %129 = load %struct.bio*, %struct.bio** %15, align 8
  %130 = call i64 @submit_bio_wait(%struct.bio* %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %84
  %133 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %12, align 4
  %136 = call i64 @rdev_set_badblocks(%struct.md_rdev* %133, i32 %134, i32 %135, i32 0)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br label %141

141:                                              ; preds = %138, %132
  %142 = phi i1 [ false, %132 ], [ %140, %138 ]
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %14, align 4
  br label %144

144:                                              ; preds = %141, %84
  %145 = load %struct.bio*, %struct.bio** %15, align 8
  %146 = call i32 @bio_put(%struct.bio* %145)
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %13, align 4
  %149 = sub nsw i32 %148, %147
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %12, align 4
  br label %75

154:                                              ; preds = %75
  %155 = load i32, i32* %14, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %154, %48
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @bdev_logical_block_size(i32) #1

declare dso_local %struct.bio* @bio_clone_fast(%struct.bio*, i32, i32*) #1

declare dso_local i32 @bio_trim(%struct.bio*, i32, i32) #1

declare dso_local i32 @choose_data_offset(%struct.r10bio*, %struct.md_rdev*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i64 @submit_bio_wait(%struct.bio*) #1

declare dso_local i64 @rdev_set_badblocks(%struct.md_rdev*, i32, i32, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
