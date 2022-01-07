; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_pipe_ctx_to_e2e_pipe_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_pipe_ctx_to_e2e_pipe_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_61__, %struct.TYPE_59__*, %struct.TYPE_57__, %struct.TYPE_39__*, %struct.TYPE_56__*, %struct.TYPE_45__* }
%struct.TYPE_61__ = type { i32, i32, i32 }
%struct.TYPE_59__ = type { %struct.TYPE_58__ }
%struct.TYPE_58__ = type { double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_57__ = type { %struct.TYPE_55__, %struct.TYPE_68__* }
%struct.TYPE_55__ = type { %struct.TYPE_54__, %struct.TYPE_52__, %struct.TYPE_51__, %struct.TYPE_49__, %struct.TYPE_46__, %struct.TYPE_36__ }
%struct.TYPE_54__ = type { i32, i32 }
%struct.TYPE_52__ = type { i32 }
%struct.TYPE_51__ = type { %struct.TYPE_50__, %struct.TYPE_43__ }
%struct.TYPE_50__ = type { double }
%struct.TYPE_43__ = type { double }
%struct.TYPE_49__ = type { %struct.TYPE_48__, %struct.TYPE_47__, %struct.TYPE_42__, %struct.TYPE_41__ }
%struct.TYPE_48__ = type { double }
%struct.TYPE_47__ = type { double }
%struct.TYPE_42__ = type { double }
%struct.TYPE_41__ = type { double }
%struct.TYPE_46__ = type { i32, i32, i32, i32 }
%struct.TYPE_36__ = type { i32, i32 }
%struct.TYPE_68__ = type { %struct.TYPE_67__* }
%struct.TYPE_67__ = type { %struct.TYPE_66__* }
%struct.TYPE_66__ = type { %struct.TYPE_65__*, %struct.TYPE_62__ }
%struct.TYPE_65__ = type { %struct.TYPE_64__* }
%struct.TYPE_64__ = type { %struct.TYPE_63__* }
%struct.TYPE_63__ = type { i64 (i32, i32*)* }
%struct.TYPE_62__ = type { i64 }
%struct.TYPE_39__ = type { i32, i32, %struct.TYPE_38__, %struct.TYPE_35__ }
%struct.TYPE_38__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_35__ = type { i32, i64 }
%struct.TYPE_56__ = type { %struct.TYPE_39__* }
%struct.TYPE_45__ = type { %struct.TYPE_39__* }
%struct._vcs_dpi_display_pipe_params_st = type { %struct.TYPE_60__, %struct.TYPE_53__, %struct.TYPE_44__, %struct.TYPE_40__ }
%struct.TYPE_60__ = type { double, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_53__ = type { double, double, double, double, double, double, i32 }
%struct.TYPE_44__ = type { i32, i32, i32, i32 }
%struct.TYPE_40__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32 }

@dm_horz = common dso_local global i8* null, align 8
@dm_vert = common dso_local global i8* null, align 8
@dm_420_8 = common dso_local global i32 0, align 4
@dm_420_10 = common dso_local global i32 0, align 4
@dm_444_64 = common dso_local global i32 0, align 4
@dm_444_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*, %struct._vcs_dpi_display_pipe_params_st*)* @pipe_ctx_to_e2e_pipe_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_ctx_to_e2e_pipe_params(%struct.pipe_ctx* %0, %struct._vcs_dpi_display_pipe_params_st* %1) #0 {
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca %struct._vcs_dpi_display_pipe_params_st*, align 8
  %5 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %3, align 8
  store %struct._vcs_dpi_display_pipe_params_st* %1, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %6 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %7 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %9, i32 0, i32 5
  %11 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %12 = icmp ne %struct.TYPE_45__* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %14, i32 0, i32 5
  %16 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %19 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %19, i32 0, i32 3
  %21 = load %struct.TYPE_39__*, %struct.TYPE_39__** %20, align 8
  %22 = icmp eq %struct.TYPE_39__* %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %25 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %47

27:                                               ; preds = %13, %2
  %28 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %28, i32 0, i32 4
  %30 = load %struct.TYPE_56__*, %struct.TYPE_56__** %29, align 8
  %31 = icmp ne %struct.TYPE_56__* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %33, i32 0, i32 4
  %35 = load %struct.TYPE_56__*, %struct.TYPE_56__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_39__*, %struct.TYPE_39__** %36, align 8
  %38 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %38, i32 0, i32 3
  %40 = load %struct.TYPE_39__*, %struct.TYPE_39__** %39, align 8
  %41 = icmp eq %struct.TYPE_39__* %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %44 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %32, %27
  br label %47

47:                                               ; preds = %46, %23
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_68__*, %struct.TYPE_68__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_67__*, %struct.TYPE_67__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_66__*, %struct.TYPE_66__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %47
  %61 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %61, i32 0, i32 3
  %63 = load %struct.TYPE_39__*, %struct.TYPE_39__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  %70 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %71 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  br label %102

73:                                               ; preds = %47
  %74 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %75 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_68__*, %struct.TYPE_68__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_67__*, %struct.TYPE_67__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_66__*, %struct.TYPE_66__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_65__*, %struct.TYPE_65__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_64__*, %struct.TYPE_64__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_63__*, %struct.TYPE_63__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %87, i32 0, i32 0
  %89 = load i64 (i32, i32*)*, i64 (i32, i32*)** %88, align 8
  %90 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %91 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %90, i32 0, i32 3
  %92 = load %struct.TYPE_39__*, %struct.TYPE_39__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 %89(i32 %94, i32* %5)
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1, i32 0
  %99 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %100 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  br label %102

102:                                              ; preds = %73, %60
  %103 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %104 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %104, i32 0, i32 2
  store i32 1, i32* %105, align 8
  %106 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %107 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %106, i32 0, i32 3
  %108 = load %struct.TYPE_39__*, %struct.TYPE_39__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %113 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %113, i32 0, i32 15
  store i32 %111, i32* %114, align 8
  %115 = load i8*, i8** @dm_horz, align 8
  %116 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %117 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %117, i32 0, i32 12
  store i8* %115, i8** %118, align 8
  %119 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %120 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %119, i32 0, i32 3
  %121 = load %struct.TYPE_39__*, %struct.TYPE_39__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %127 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %127, i32 0, i32 14
  store i32 %125, i32* %128, align 4
  %129 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %130 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %136 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %136, i32 0, i32 3
  store i32 %134, i32* %137, align 4
  %138 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %139 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %145 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %145, i32 0, i32 4
  store i32 %143, i32* %146, align 8
  %147 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %148 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %154 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %154, i32 0, i32 5
  store i32 %152, i32* %155, align 4
  %156 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %157 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %163 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %163, i32 0, i32 6
  store i32 %161, i32* %164, align 8
  %165 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %166 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %166, i32 0, i32 7
  store i32 128, i32* %167, align 4
  %168 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %169 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %169, i32 0, i32 8
  store i32 32, i32* %170, align 8
  %171 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %172 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %171, i32 0, i32 3
  %173 = load %struct.TYPE_39__*, %struct.TYPE_39__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @swizzle_mode_to_macro_tile_size(i32 %177)
  %179 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %180 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %180, i32 0, i32 13
  store i32 %178, i32* %181, align 8
  %182 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %183 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %182, i32 0, i32 3
  %184 = load %struct.TYPE_39__*, %struct.TYPE_39__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  switch i32 %186, label %197 [
    i32 138, label %187
    i32 137, label %187
    i32 135, label %192
    i32 136, label %192
  ]

187:                                              ; preds = %102, %102
  %188 = load i8*, i8** @dm_horz, align 8
  %189 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %190 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %190, i32 0, i32 12
  store i8* %188, i8** %191, align 8
  br label %199

192:                                              ; preds = %102, %102
  %193 = load i8*, i8** @dm_vert, align 8
  %194 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %195 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %195, i32 0, i32 12
  store i8* %193, i8** %196, align 8
  br label %199

197:                                              ; preds = %102
  %198 = call i32 @ASSERT(i32 0)
  br label %199

199:                                              ; preds = %197, %192, %187
  %200 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %201 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %200, i32 0, i32 3
  %202 = load %struct.TYPE_39__*, %struct.TYPE_39__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  switch i32 %204, label %266 [
    i32 129, label %205
    i32 128, label %205
    i32 131, label %226
    i32 130, label %226
    i32 133, label %247
    i32 132, label %247
    i32 134, label %247
  ]

205:                                              ; preds = %199, %199
  %206 = load i32, i32* @dm_420_8, align 4
  %207 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %208 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %208, i32 0, i32 11
  store i32 %206, i32* %209, align 4
  %210 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %211 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = sdiv i32 %213, 2
  %215 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %216 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %216, i32 0, i32 9
  store i32 %214, i32* %217, align 4
  %218 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %219 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = sdiv i32 %221, 2
  %223 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %224 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %224, i32 0, i32 10
  store i32 %222, i32* %225, align 8
  br label %285

226:                                              ; preds = %199, %199
  %227 = load i32, i32* @dm_420_10, align 4
  %228 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %229 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %229, i32 0, i32 11
  store i32 %227, i32* %230, align 4
  %231 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %232 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = sdiv i32 %234, 2
  %236 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %237 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %237, i32 0, i32 9
  store i32 %235, i32* %238, align 4
  %239 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %240 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = sdiv i32 %242, 2
  %244 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %245 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %245, i32 0, i32 10
  store i32 %243, i32* %246, align 8
  br label %285

247:                                              ; preds = %199, %199, %199
  %248 = load i32, i32* @dm_444_64, align 4
  %249 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %250 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %250, i32 0, i32 11
  store i32 %248, i32* %251, align 4
  %252 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %253 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %257 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %257, i32 0, i32 9
  store i32 %255, i32* %258, align 4
  %259 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %260 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %264 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %264, i32 0, i32 10
  store i32 %262, i32* %265, align 8
  br label %285

266:                                              ; preds = %199
  %267 = load i32, i32* @dm_444_32, align 4
  %268 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %269 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %269, i32 0, i32 11
  store i32 %267, i32* %270, align 4
  %271 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %272 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %276 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %276, i32 0, i32 9
  store i32 %274, i32* %277, align 4
  %278 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %279 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %283 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %283, i32 0, i32 10
  store i32 %281, i32* %284, align 8
  br label %285

285:                                              ; preds = %266, %247, %226, %205
  %286 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %287 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %288, i32 0, i32 4
  %290 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %293 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %293, i32 0, i32 3
  store i32 %291, i32* %294, align 4
  %295 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %296 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %297, i32 0, i32 3
  %299 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %299, i32 0, i32 0
  %301 = load double, double* %300, align 8
  %302 = fdiv double %301, 0x41F0000000000000
  %303 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %304 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %304, i32 0, i32 0
  store double %302, double* %305, align 8
  %306 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %307 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %310, i32 0, i32 0
  %312 = load double, double* %311, align 8
  %313 = fdiv double %312, 0x41F0000000000000
  %314 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %315 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %315, i32 0, i32 1
  store double %313, double* %316, align 8
  %317 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %318 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %321, i32 0, i32 0
  %323 = load double, double* %322, align 8
  %324 = fdiv double %323, 0x41F0000000000000
  %325 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %326 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %326, i32 0, i32 2
  store double %324, double* %327, align 8
  %328 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %329 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %329, i32 0, i32 2
  %331 = load double, double* %330, align 8
  %332 = fcmp olt double %331, 1.000000e+00
  br i1 %332, label %333, label %337

333:                                              ; preds = %285
  %334 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %335 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %335, i32 0, i32 2
  store double 1.000000e+00, double* %336, align 8
  br label %337

337:                                              ; preds = %333, %285
  %338 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %339 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %338, i32 0, i32 2
  %340 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %340, i32 0, i32 4
  %342 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %345 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %345, i32 0, i32 2
  store i32 %343, i32* %346, align 8
  %347 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %348 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %349, i32 0, i32 4
  %351 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %354 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %354, i32 0, i32 1
  store i32 %352, i32* %355, align 4
  %356 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %357 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %358, i32 0, i32 4
  %360 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %363 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %362, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %363, i32 0, i32 0
  store i32 %361, i32* %364, align 8
  %365 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %366 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %367, i32 0, i32 3
  %369 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %369, i32 0, i32 0
  %371 = load double, double* %370, align 8
  %372 = fdiv double %371, 0x41F0000000000000
  %373 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %374 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %374, i32 0, i32 3
  store double %372, double* %375, align 8
  %376 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %377 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %378, i32 0, i32 3
  %380 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %380, i32 0, i32 0
  %382 = load double, double* %381, align 8
  %383 = fdiv double %382, 0x41F0000000000000
  %384 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %385 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %385, i32 0, i32 4
  store double %383, double* %386, align 8
  %387 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %388 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %389, i32 0, i32 2
  %391 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %391, i32 0, i32 0
  %393 = load double, double* %392, align 8
  %394 = fdiv double %393, 0x41F0000000000000
  %395 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %396 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %396, i32 0, i32 5
  store double %394, double* %397, align 8
  %398 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %399 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %399, i32 0, i32 5
  %401 = load double, double* %400, align 8
  %402 = fcmp olt double %401, 1.000000e+00
  br i1 %402, label %403, label %407

403:                                              ; preds = %337
  %404 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %405 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %405, i32 0, i32 5
  store double 1.000000e+00, double* %406, align 8
  br label %407

407:                                              ; preds = %403, %337
  %408 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %409 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %408, i32 0, i32 2
  %410 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  switch i32 %413, label %422 [
    i32 140, label %414
    i32 139, label %418
  ]

414:                                              ; preds = %407
  %415 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %416 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %416, i32 0, i32 6
  store i32 30, i32* %417, align 8
  br label %426

418:                                              ; preds = %407
  %419 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %420 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %420, i32 0, i32 6
  store i32 36, i32* %421, align 8
  br label %426

422:                                              ; preds = %407
  %423 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %424 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %424, i32 0, i32 6
  store i32 24, i32* %425, align 8
  br label %426

426:                                              ; preds = %422, %418, %414
  %427 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %428 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %427, i32 0, i32 1
  %429 = load %struct.TYPE_59__*, %struct.TYPE_59__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %430, i32 0, i32 3
  %432 = load i64, i64* %431, align 8
  %433 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %434 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %433, i32 0, i32 1
  %435 = load %struct.TYPE_59__*, %struct.TYPE_59__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = add nsw i64 %432, %438
  %440 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %441 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %440, i32 0, i32 1
  %442 = load %struct.TYPE_59__*, %struct.TYPE_59__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %443, i32 0, i32 2
  %445 = load i64, i64* %444, align 8
  %446 = add nsw i64 %439, %445
  %447 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %448 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %448, i32 0, i32 14
  store i64 %446, i64* %449, align 8
  %450 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %451 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %450, i32 0, i32 2
  %452 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %457 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %457, i32 0, i32 13
  store i32 %455, i32* %458, align 4
  %459 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %460 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %459, i32 0, i32 2
  %461 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %466 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %466, i32 0, i32 12
  store i32 %464, i32* %467, align 8
  %468 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %469 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %468, i32 0, i32 2
  %470 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %475 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %475, i32 0, i32 11
  store i32 %473, i32* %476, align 4
  %477 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %478 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %477, i32 0, i32 2
  %479 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %484 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %484, i32 0, i32 10
  store i32 %482, i32* %485, align 8
  %486 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %487 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %486, i32 0, i32 1
  %488 = load %struct.TYPE_59__*, %struct.TYPE_59__** %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %489, i32 0, i32 10
  %491 = load i64, i64* %490, align 8
  %492 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %493 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %493, i32 0, i32 9
  store i64 %491, i64* %494, align 8
  %495 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %496 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %495, i32 0, i32 0
  %497 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %496, i32 0, i32 9
  %498 = load i64, i64* %497, align 8
  %499 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %500 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %499, i32 0, i32 1
  %501 = load %struct.TYPE_59__*, %struct.TYPE_59__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %501, i32 0, i32 0
  %503 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %502, i32 0, i32 9
  %504 = load i64, i64* %503, align 8
  %505 = sub nsw i64 %498, %504
  %506 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %507 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %507, i32 0, i32 7
  store i64 %505, i64* %508, align 8
  %509 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %510 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %509, i32 0, i32 0
  %511 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %510, i32 0, i32 7
  %512 = load i64, i64* %511, align 8
  %513 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %514 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %513, i32 0, i32 1
  %515 = load %struct.TYPE_59__*, %struct.TYPE_59__** %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %516, i32 0, i32 8
  %518 = load i64, i64* %517, align 8
  %519 = sub nsw i64 %512, %518
  %520 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %521 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %520, i32 0, i32 1
  %522 = load %struct.TYPE_59__*, %struct.TYPE_59__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %522, i32 0, i32 0
  %524 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %523, i32 0, i32 7
  %525 = load i64, i64* %524, align 8
  %526 = sub nsw i64 %519, %525
  %527 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %528 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %527, i32 0, i32 1
  %529 = load %struct.TYPE_59__*, %struct.TYPE_59__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %529, i32 0, i32 0
  %531 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %530, i32 0, i32 6
  %532 = load i64, i64* %531, align 8
  %533 = sub nsw i64 %526, %532
  %534 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %535 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %535, i32 0, i32 8
  store i64 %533, i64* %536, align 8
  %537 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %538 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %537, i32 0, i32 1
  %539 = load %struct.TYPE_59__*, %struct.TYPE_59__** %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %539, i32 0, i32 0
  %541 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %540, i32 0, i32 5
  %542 = load i64, i64* %541, align 8
  %543 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %544 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %543, i32 0, i32 0
  %545 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %544, i32 0, i32 6
  store i64 %542, i64* %545, align 8
  %546 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %547 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %546, i32 0, i32 0
  %548 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %547, i32 0, i32 6
  %549 = load i64, i64* %548, align 8
  %550 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %551 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %550, i32 0, i32 1
  %552 = load %struct.TYPE_59__*, %struct.TYPE_59__** %551, align 8
  %553 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %553, i32 0, i32 4
  %555 = load i64, i64* %554, align 8
  %556 = sub nsw i64 %549, %555
  %557 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %558 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %557, i32 0, i32 0
  %559 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %558, i32 0, i32 4
  store i64 %556, i64* %559, align 8
  %560 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %561 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %560, i32 0, i32 0
  %562 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %561, i32 0, i32 4
  %563 = load i64, i64* %562, align 8
  %564 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %565 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %564, i32 0, i32 1
  %566 = load %struct.TYPE_59__*, %struct.TYPE_59__** %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %566, i32 0, i32 0
  %568 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %567, i32 0, i32 3
  %569 = load i64, i64* %568, align 8
  %570 = sub nsw i64 %563, %569
  %571 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %572 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %571, i32 0, i32 1
  %573 = load %struct.TYPE_59__*, %struct.TYPE_59__** %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %573, i32 0, i32 0
  %575 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %574, i32 0, i32 2
  %576 = load i64, i64* %575, align 8
  %577 = sub nsw i64 %570, %576
  %578 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %579 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %578, i32 0, i32 1
  %580 = load %struct.TYPE_59__*, %struct.TYPE_59__** %579, align 8
  %581 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %580, i32 0, i32 0
  %582 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %581, i32 0, i32 1
  %583 = load i64, i64* %582, align 8
  %584 = sub nsw i64 %577, %583
  %585 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %586 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %585, i32 0, i32 0
  %587 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %586, i32 0, i32 5
  store i64 %584, i64* %587, align 8
  %588 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %589 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %588, i32 0, i32 1
  %590 = load %struct.TYPE_59__*, %struct.TYPE_59__** %589, align 8
  %591 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %590, i32 0, i32 0
  %592 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %591, i32 0, i32 0
  %593 = load double, double* %592, align 8
  %594 = fdiv double %593, 1.000000e+04
  %595 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %596 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %595, i32 0, i32 0
  %597 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %596, i32 0, i32 0
  store double %594, double* %597, align 8
  %598 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %599 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %598, i32 0, i32 0
  %600 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %599, i32 0, i32 2
  %601 = load i32, i32* %600, align 8
  %602 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %603 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %602, i32 0, i32 0
  %604 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %603, i32 0, i32 3
  store i32 %601, i32* %604, align 8
  %605 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %606 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %605, i32 0, i32 0
  %607 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %606, i32 0, i32 1
  %608 = load i32, i32* %607, align 4
  %609 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %610 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %609, i32 0, i32 0
  %611 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %610, i32 0, i32 2
  store i32 %608, i32* %611, align 4
  %612 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %613 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %612, i32 0, i32 0
  %614 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %613, i32 0, i32 1
  %615 = load i32, i32* %614, align 4
  %616 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %617 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %616, i32 0, i32 0
  %618 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %617, i32 0, i32 2
  store i32 %615, i32* %618, align 4
  %619 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %620 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %619, i32 0, i32 0
  %621 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %620, i32 0, i32 0
  %622 = load i32, i32* %621, align 8
  %623 = load %struct._vcs_dpi_display_pipe_params_st*, %struct._vcs_dpi_display_pipe_params_st** %4, align 8
  %624 = getelementptr inbounds %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_pipe_params_st* %623, i32 0, i32 0
  %625 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %624, i32 0, i32 1
  store i32 %622, i32* %625, align 8
  ret void
}

declare dso_local i32 @swizzle_mode_to_macro_tile_size(i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
