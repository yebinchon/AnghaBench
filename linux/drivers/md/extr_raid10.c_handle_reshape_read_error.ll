; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_handle_reshape_read_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_handle_reshape_read_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, %struct.r10conf* }
%struct.r10conf = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.r10bio = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.page = type { i32 }
%struct.md_rdev = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.page** }

@devs = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.r10bio*)* @handle_reshape_read_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_reshape_read_error(%struct.mddev* %0, %struct.r10bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.r10bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r10conf*, align 8
  %8 = alloca %struct.r10bio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.md_rdev*, align 8
  %17 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.r10bio* %1, %struct.r10bio** %5, align 8
  %18 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %19 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.mddev*, %struct.mddev** %4, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 1
  %23 = load %struct.r10conf*, %struct.r10conf** %22, align 8
  store %struct.r10conf* %23, %struct.r10conf** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load %struct.r10bio*, %struct.r10bio** %8, align 8
  %25 = load i32, i32* @devs, align 4
  %26 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %27 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @struct_size(%struct.r10bio* %24, i32 %25, i32 %28)
  %30 = load i32, i32* @GFP_NOIO, align 4
  %31 = call %struct.r10bio* @kmalloc(i32 %29, i32 %30)
  store %struct.r10bio* %31, %struct.r10bio** %8, align 8
  %32 = load %struct.r10bio*, %struct.r10bio** %8, align 8
  %33 = icmp ne %struct.r10bio* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %36 = load %struct.mddev*, %struct.mddev** %4, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 0
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %186

41:                                               ; preds = %2
  %42 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %43 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.TYPE_6__* @get_resync_pages(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.page**, %struct.page*** %49, align 8
  store %struct.page** %50, %struct.page*** %11, align 8
  %51 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %52 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.r10bio*, %struct.r10bio** %8, align 8
  %55 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %57 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %56, i32 0, i32 2
  %58 = load %struct.r10bio*, %struct.r10bio** %8, align 8
  %59 = call i32 @__raid10_find_phys(i32* %57, %struct.r10bio* %58)
  br label %60

60:                                               ; preds = %177, %41
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %183

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = ashr i32 %67, 9
  %69 = icmp sgt i32 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = ashr i32 %71, 9
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %70, %63
  %74 = call i32 (...) @rcu_read_lock()
  br label %75

75:                                               ; preds = %163, %73
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  br i1 %78, label %79, label %164

79:                                               ; preds = %75
  %80 = load %struct.r10bio*, %struct.r10bio** %8, align 8
  %81 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %80, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %15, align 4
  %88 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %89 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call %struct.md_rdev* @rcu_dereference(i32 %95)
  store %struct.md_rdev* %96, %struct.md_rdev** %16, align 8
  %97 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %98 = icmp eq %struct.md_rdev* %97, null
  br i1 %98, label %111, label %99

99:                                               ; preds = %79
  %100 = load i32, i32* @Faulty, align 4
  %101 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %102 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %101, i32 0, i32 1
  %103 = call i64 @test_bit(i32 %100, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* @In_sync, align 4
  %107 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %108 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %107, i32 0, i32 1
  %109 = call i64 @test_bit(i32 %106, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %105, %99, %79
  br label %149

112:                                              ; preds = %105
  %113 = load %struct.r10bio*, %struct.r10bio** %8, align 8
  %114 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %113, i32 0, i32 1
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @PAGE_SIZE, align 4
  %123 = mul nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %120, %124
  store i64 %125, i64* %17, align 8
  %126 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %127 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %126, i32 0, i32 0
  %128 = call i32 @atomic_inc(i32* %127)
  %129 = call i32 (...) @rcu_read_unlock()
  %130 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %131 = load i64, i64* %17, align 8
  %132 = load i32, i32* %12, align 4
  %133 = shl i32 %132, 9
  %134 = load %struct.page**, %struct.page*** %11, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.page*, %struct.page** %134, i64 %136
  %138 = load %struct.page*, %struct.page** %137, align 8
  %139 = load i32, i32* @REQ_OP_READ, align 4
  %140 = call i32 @sync_page_io(%struct.md_rdev* %130, i64 %131, i32 %133, %struct.page* %138, i32 %139, i32 0, i32 0)
  store i32 %140, i32* %13, align 4
  %141 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %142 = load %struct.mddev*, %struct.mddev** %4, align 8
  %143 = call i32 @rdev_dec_pending(%struct.md_rdev* %141, %struct.mddev* %142)
  %144 = call i32 (...) @rcu_read_lock()
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %112
  br label %164

148:                                              ; preds = %112
  br label %149

149:                                              ; preds = %148, %111
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %154 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp sge i32 %152, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  store i32 0, i32* %9, align 4
  br label %158

158:                                              ; preds = %157, %149
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %164

163:                                              ; preds = %158
  br label %75

164:                                              ; preds = %162, %147, %75
  %165 = call i32 (...) @rcu_read_unlock()
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %170 = load %struct.mddev*, %struct.mddev** %4, align 8
  %171 = getelementptr inbounds %struct.mddev, %struct.mddev* %170, i32 0, i32 0
  %172 = call i32 @set_bit(i32 %169, i32* %171)
  %173 = load %struct.r10bio*, %struct.r10bio** %8, align 8
  %174 = call i32 @kfree(%struct.r10bio* %173)
  %175 = load i32, i32* @EIO, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %3, align 4
  br label %186

177:                                              ; preds = %164
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %6, align 4
  %180 = sub nsw i32 %179, %178
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %60

183:                                              ; preds = %60
  %184 = load %struct.r10bio*, %struct.r10bio** %8, align 8
  %185 = call i32 @kfree(%struct.r10bio* %184)
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %183, %168, %34
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.r10bio* @kmalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.r10bio*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @get_resync_pages(i32) #1

declare dso_local i32 @__raid10_find_phys(i32*, %struct.r10bio*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @sync_page_io(%struct.md_rdev*, i64, i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.mddev*) #1

declare dso_local i32 @kfree(%struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
