; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_syncmap.c_igt_syncmap_compact.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_syncmap.c_igt_syncmap_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_syncmap = type { i32, i32, %struct.i915_syncmap*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@SHIFT = common dso_local global i32 0, align 4
@KSYNCMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"Inserting context=%llx (order=%d, idx=%d) did not return leaf (height=%d, prefix=%llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Parent (join) of last leaf was not the sync!\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Join does not have the expected height, found %d, expected %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Join is not full!, found %x (%d) expected %lx (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Child %d is a not leaf!\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Child %d is not attached to us!\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Child %d holds more than one id, found %x (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Child %d has wrong seqno idx, found %d, expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_syncmap_compact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_syncmap_compact(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i915_syncmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i915_syncmap*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = call i32 @i915_syncmap_init(%struct.i915_syncmap** %3)
  %12 = load i32, i32* @SHIFT, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %181, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp ult i32 %14, 64
  br i1 %15, label %16, label %185

16:                                               ; preds = %13
  %17 = call i32 @check_syncmap_free(%struct.i915_syncmap** %3)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %186

21:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %57, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @KSYNCMAP, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @BIT_ULL(i32 %28)
  %30 = mul i32 %27, %29
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %30, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @i915_syncmap_set(%struct.i915_syncmap** %3, i32 %33, i32 0)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %186

38:                                               ; preds = %26
  %39 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %40 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %48 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %51 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46, i32 %49, i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %186

56:                                               ; preds = %38
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %22

60:                                               ; preds = %22
  %61 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %62 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %61, i32 0, i32 2
  %63 = load %struct.i915_syncmap*, %struct.i915_syncmap** %62, align 8
  store %struct.i915_syncmap* %63, %struct.i915_syncmap** %3, align 8
  %64 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %65 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %64, i32 0, i32 2
  %66 = load %struct.i915_syncmap*, %struct.i915_syncmap** %65, align 8
  %67 = icmp ne %struct.i915_syncmap* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %186

72:                                               ; preds = %60
  %73 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %74 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %80 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %186

86:                                               ; preds = %72
  %87 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %88 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @KSYNCMAP, align 4
  %91 = call i32 @BIT(i32 %90)
  %92 = sub nsw i32 %91, 1
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %86
  %95 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %96 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %99 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @hweight32(i32 %100)
  %102 = load i32, i32* @KSYNCMAP, align 4
  %103 = call i32 @BIT(i32 %102)
  %104 = sub nsw i32 %103, 1
  %105 = load i32, i32* @KSYNCMAP, align 4
  %106 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %97, i32 %101, i32 %104, i32 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  br label %186

109:                                              ; preds = %86
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %177, %109
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @KSYNCMAP, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %180

114:                                              ; preds = %110
  %115 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %116 = call %struct.i915_syncmap** @__sync_child(%struct.i915_syncmap* %115)
  %117 = load i32, i32* %4, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.i915_syncmap*, %struct.i915_syncmap** %116, i64 %118
  %120 = load %struct.i915_syncmap*, %struct.i915_syncmap** %119, align 8
  store %struct.i915_syncmap* %120, %struct.i915_syncmap** %8, align 8
  %121 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %122 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %114
  %126 = load i32, i32* %4, align 4
  %127 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %186

130:                                              ; preds = %114
  %131 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %132 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %131, i32 0, i32 2
  %133 = load %struct.i915_syncmap*, %struct.i915_syncmap** %132, align 8
  %134 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %135 = icmp ne %struct.i915_syncmap* %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load i32, i32* %4, align 4
  %138 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %6, align 4
  br label %186

141:                                              ; preds = %130
  %142 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %143 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @is_power_of_2(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %141
  %148 = load i32, i32* %4, align 4
  %149 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %150 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %153 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @hweight32(i32 %154)
  %156 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %148, i32 %151, i32 %155)
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %6, align 4
  br label %186

159:                                              ; preds = %141
  %160 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %161 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %4, align 4
  %164 = call i32 @BIT(i32 %163)
  %165 = icmp ne i32 %162, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %159
  %167 = load i32, i32* %4, align 4
  %168 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %169 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ilog2(i32 %170)
  %172 = load i32, i32* %4, align 4
  %173 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %167, i32 %171, i32 %172)
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %6, align 4
  br label %186

176:                                              ; preds = %159
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %4, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %4, align 4
  br label %110

180:                                              ; preds = %110
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* @SHIFT, align 4
  %183 = load i32, i32* %5, align 4
  %184 = add i32 %183, %182
  store i32 %184, i32* %5, align 4
  br label %13

185:                                              ; preds = %13
  br label %186

186:                                              ; preds = %185, %166, %147, %136, %125, %94, %78, %68, %43, %37, %20
  %187 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @dump_syncmap(%struct.i915_syncmap* %187, i32 %188)
  ret i32 %189
}

declare dso_local i32 @i915_syncmap_init(%struct.i915_syncmap**) #1

declare dso_local i32 @check_syncmap_free(%struct.i915_syncmap**) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @i915_syncmap_set(%struct.i915_syncmap**, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local %struct.i915_syncmap** @__sync_child(%struct.i915_syncmap*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @dump_syncmap(%struct.i915_syncmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
